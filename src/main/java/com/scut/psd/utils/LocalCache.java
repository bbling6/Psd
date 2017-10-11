package com.scut.psd.utils;

import com.scut.psd.dao.po.User;
import com.scut.psd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import java.util.concurrent.ConcurrentHashMap;

/**
 * ConcurrentHashMap实现一个本地缓存
 */
@Component
public class LocalCache{

    @Autowired
    private UserService userService;

    /**线程安全的cacheMap*/
    private ConcurrentHashMap<String,Object> cacheMap = new ConcurrentHashMap<>();

    /**
     * 添加缓存
     */
    public void putCache(String key,Object value) {
        cacheMap.put(buildKey(key),value);
    }
    /**
     * 获取缓存
     */
    public Object getCacheValue(String key) {
        String newKey = this.buildKey(key);
        /**如果缓存中有该key，则返回value*/
        if(cacheMap.containsKey(newKey)){
            return cacheMap.get(newKey);
        }else{
            return null;
        }
    }
    /**
     * 移除缓存
     */
    public void removeCache(String key) {
        cacheMap.remove(buildKey(key));
    }
    /**
     * 构建缓存key
     */
    private String buildKey(String key){
        User user = userService.getUserByName();
        return user.getId() + "-" + key;
    }
}