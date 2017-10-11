package com.scut.psd.dao.impl;

import com.scut.psd.constant.CollectionConst;
import com.scut.psd.dao.AbstractBaseMongoDao;
import com.scut.psd.dao.po.User;
import org.springframework.stereotype.Repository;

@Repository
public class UserMongoDaoImpl extends AbstractBaseMongoDao<User> {

    @Override
    public Class<User> getEntityClass() {
        return User.class;
    }

    @Override
    public String getCollectionName() {
        return CollectionConst.USER;
    }

}
