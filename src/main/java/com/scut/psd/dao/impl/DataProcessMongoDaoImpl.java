package com.scut.psd.dao.impl;

import com.scut.psd.constant.CollectionConst;
import com.scut.psd.dao.AbstractBaseMongoDao;
import com.scut.psd.dao.po.CalculateData;
import org.springframework.stereotype.Repository;

@Repository
public class DataProcessMongoDaoImpl extends AbstractBaseMongoDao<CalculateData> {

    @Override
    public Class<CalculateData> getEntityClass() {
        return CalculateData.class;
    }

    @Override
    public String getCollectionName() {
        return CollectionConst.CALCULATEDATA;
    }
}
