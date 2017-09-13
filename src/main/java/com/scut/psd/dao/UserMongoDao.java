package com.scut.psd.dao;

import com.scut.psd.constant.CollectionConst;
import com.scut.psd.dao.base.BaseMongoDaoImpl;
import com.scut.psd.dao.po.User;
import org.springframework.stereotype.Repository;

@Repository
public class UserMongoDao extends BaseMongoDaoImpl<User> {

    @Override
    public Class<User> getEntityClass() {
        return User.class;
    }

    @Override
    public String getCollectionName() {
        return CollectionConst.USER;
    }

}
