package com.scut.psd.dao;

import com.scut.psd.constant.CollectionConst;
import com.scut.psd.dao.base.BaseMongoDaoImpl;
import com.scut.psd.dao.po.CalculateData;
import org.springframework.stereotype.Repository;

@Repository
public class DataProcessMongoDao extends BaseMongoDaoImpl<CalculateData> {


    @Override
    public Class<CalculateData> getEntityClass() {
        return CalculateData.class;
    }

    @Override
    public String getCollectionName() {
        return CollectionConst.CALCULATEDATA;
    }
}
