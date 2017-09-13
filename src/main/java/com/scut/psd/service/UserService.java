package com.scut.psd.service;

import com.scut.psd.dao.UserMongoDao;
import com.scut.psd.dao.po.User;
import com.scut.psd.cache.LocalCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
public class UserService{
	
	@Autowired
	private UserMongoDao userMongoDao;

	@Autowired
	private HttpSession session;

	/**
	 * 用户注册
	 */
	public String register(User user) throws Exception{
		/**用户*/
		User userFromDb = userMongoDao.findById(String.valueOf(user.getId()));
		if(null != userFromDb){
			/**用户已经存在*/
			return "UsernameAlreadyExist";
		}
		/**邮箱*/
		Query query = new Query(Criteria.where("email").is(user.getEmail()));
		userFromDb = userMongoDao.findOne(query);
		if(null!=userFromDb){
			/**邮箱已经存在*/
			return "EmailAlreadyExist";
		}
		/**手机*/
		query = new Query(Criteria.where("mobile").is(user.getMobile()));
		userFromDb = userMongoDao.findOne(query);
		if(null!=userFromDb){
			return "MobileAlreadyExist";
		}
		/**保存*/
		userMongoDao.save(user);
		return "success";
	}
	/**
	 * 用户登录
	 */
	public boolean login(String username, String password) throws Exception {
		/**根据用户名查询*/
		Query query = new Query(Criteria.where("username").is(username));
		User user = userMongoDao.findOne(query);
			if(null==user){
			/**根据邮箱查询*/
				query = new Query(Criteria.where("email").is(user.getEmail()));
				user = userMongoDao.findOne(query);
					if(null==user){
						/**根据手机查询*/
						query = new Query(Criteria.where("mobile").is(user.getMobile()));
						user = userMongoDao.findOne(query);
					}
			} 
		if(null!=user && user.getPassword().equals(password)){
			return true;
		}else{ 
			return false;
		}
	}

	/**
	 * 获取用户
	 */
	public User getUserByName(){
		String usernameLogin = (String) session.getAttribute("usernameLogin");
		Query query = new Query(Criteria.where("username").is(usernameLogin));
		return userMongoDao.findOne(query);
	}

}
