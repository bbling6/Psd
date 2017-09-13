package com.scut.psd.service;

import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;
import com.scut.psd.cache.LocalCache;
import com.scut.psd.dao.DataProcessMongoDao;
import com.scut.psd.dao.po.CalculateData;
import com.scut.psd.dao.po.User;
import com.scut.psd.design.strategy.*;
import com.scut.psd.thread.DrawThread;
import com.scut.psd.utils.DateFormatutils;
import com.scut.psd.web.entity.Algorithm;
import com.scut.psd.web.entity.LaunchSignal;
import com.scut.psd.web.entity.Pagination;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.query.BasicQuery;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class DataProcessService {
    private Logger logger = Logger.getLogger(DataProcessService.class);

    @Autowired
    private DataProcessMongoDao dataProcessMongoDao;

    @Autowired
    private UserService userService;

    @Autowired
    private LocalCache localCache;

    @Autowired
    private ThreadPoolTaskExecutor poolTaskExecutor;

    public Map<String,List<String>> drawAndCalculate(LaunchSignal launchSignal, Algorithm algorithm){
        /**启动一条画图线程*/
        poolTaskExecutor.execute(new DrawThread(launchSignal, algorithm));
        /**
         * 策略模式
         */
        Context context = new Context();
        String algorithmType = algorithm.getAlgorithmType();
        switch (algorithmType) {
            case "pyulear":
                context.setStrategy(new PyulearOperation());
                break;
            case "pburg":
                context.setStrategy(new PburgOperation());
                break;
            case "pcov":
                context.setStrategy(new PcovOperation());
                break;
            case "pmcov":
                context.setStrategy(new PmcovOperation());
                break;
        }
        Map<String,List<String>> resultMap  = context.executeOperation(launchSignal, algorithm);
        /**
         *工厂模式
         */
//		    AlgorithmProduct algorithmProduct = AlgorithmFactory.createAlgorithmProduct(algorithmType);
//			CalculateData calculateData = algorithmProduct.getCalculateResult(launchSignal,algorithm);
        return resultMap;
    }

    /**
     * 保存数据
     */
    public void save(){
        /**从缓存获取*/
        LaunchSignal launchSignal = (LaunchSignal) localCache.getCacheValue("launchSignal");
        Algorithm algorithm = (Algorithm) localCache.getCacheValue("algorithm");
        Map<String, List<String>> resultMap = (Map<String, List<String>>) localCache.getCacheValue("resultMap");

        User user = userService.getUserByName();
        CalculateData calculateData = new CalculateData(user.getId(),launchSignal,algorithm,resultMap,DateFormatutils.transForm(new Date()));
        dataProcessMongoDao.save(calculateData);

        /**移除缓存*/
        localCache.removeCache("launchSignal");
        localCache.removeCache("algorithm");
        localCache.removeCache("resultMap");

    }
    /**
     * 获取数据列表
     */
    public Pagination<CalculateData> getPagination(int currentPage, int pageSize) {
        User user = userService.getUserByName();

        /**查询条件*/
        DBObject queryObject = new BasicDBObject();
        queryObject.put("userId", user.getId());

        /**指定返回的字段*/
        DBObject fieldsObject=new BasicDBObject();
        fieldsObject.put("id", true);
        fieldsObject.put("algorithm", true);
        fieldsObject.put("createTime", true);
        Query query = new BasicQuery(queryObject,fieldsObject);

        /**获取总条数*/
        int totalRecords = (int) dataProcessMongoDao.count(query);
        /**获取总条数*/
        List<CalculateData> calculateDataList = dataProcessMongoDao.findByPage(currentPage, pageSize, query);
        /**封装pagination*/
        Pagination<CalculateData> pagination = new Pagination<>(totalRecords, currentPage, pageSize, calculateDataList);
        logger.info(pagination);

        return pagination;

    }
    /**
     * 获取数据详情
     */
    public CalculateData getById(String calId) {
        /**先从缓存里面获取*/
        CalculateData calculateData = (CalculateData) localCache.getCacheValue(calId);
        /**如果calculateData为null,则从mongodb中查询*/
        if (null == calculateData) {
            calculateData = dataProcessMongoDao.findById(calId);
            /**查询结果放进cache缓存*/
            localCache.putCache(calculateData.getId(), calculateData);
            logger.info("from mongodb" + calculateData);
        }
        return calculateData;
    }
}
