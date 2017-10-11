package com.scut.psd.service;

import com.scut.psd.dao.impl.UserMongoDaoImpl;
import com.scut.psd.dao.po.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
public class UserService{
	
	@Autowired
	private UserMongoDaoImpl userMongoDaoImpl;

	@Autowired
	private HttpSession session;

	/**
	 * 用户注册
	 */
	public String register(User user) throws Exception{
		/**用户*/
		User userFromDb = userMongoDaoImpl.findById(String.valueOf(user.getId()));
		if(null != userFromDb){
			/**用户已经存在*/
			return "UsernameAlreadyExist";
		}
		/**邮箱*/
		Query query = new Query(Criteria.where("email").is(user.getEmail()));
		userFromDb = userMongoDaoImpl.findOne(query);
		if(null!=userFromDb){
			/**邮箱已经存在*/
			return "EmailAlreadyExist";
		}
		/**手机*/
		query = new Query(Criteria.where("mobile").is(user.getMobile()));
		userFromDb = userMongoDaoImpl.findOne(query);
		if(null!=userFromDb){
			return "MobileAlreadyExist";
		}
		/**保存*/
		userMongoDaoImpl.save(user);
		return "success";
	}
	/**
	 * 用户登录
	 */
	public boolean login(String username, String password) throws Exception {
		/**根据用户名查询*/
		Query query = new Query(Criteria.where("username").is(username));
		User user = userMongoDaoImpl.findOne(query);
			if(null==user){
			/**根据邮箱查询*/
				query = new Query(Criteria.where("email").is(user.getEmail()));
				user = userMongoDaoImpl.findOne(query);
					if(null==user){
						/**根据手机查询*/
						query = new Query(Criteria.where("mobile").is(user.getMobile()));
						user = userMongoDaoImpl.findOne(query);
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
		return userMongoDaoImpl.findOne(query);
	}

}
