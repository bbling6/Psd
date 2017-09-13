package com.scut.psd.dao.po;

import lombok.Data;
import org.springframework.data.annotation.Id;
import java.util.Date;

@Data
public class User {

	/**
	 * 主键
	 */
	@Id
	private String id;
	/**
	 * 名字
	 */
	private String username;
	/**
	 * 密码
	 */
	private String password;
	/**
	 * 手机号码
	 */
	private String mobile;
	/**
	 * 邮箱地址
	 */
	private String email;
	/**
	 * 创建时间
	 */
	private Date createTime;

}
