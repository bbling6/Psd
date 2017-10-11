package com.scut.psd.controller;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.scut.psd.dao.po.User;
import com.scut.psd.service.UserService;
import com.scut.psd.web.request.UserRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/user")
public class UserController {

	private final static String TOREGISTER = "/Psd-ssm/user/toRegister";
	private final static String TOLOGIN = "/Psd-ssm/user/toLogin";
	private final static String INDEX = "/Psd-ssm/index";
	
	@Autowired
	private UserService userService;

	@Autowired
	private HttpSession session;

	@Autowired
	private HttpServletRequest request;

	@Autowired
	private HttpServletResponse response;

	@RequestMapping(value="/toLogin", method=RequestMethod.GET)
	public String toLogin(){
		  return "/user/login";
	}
	
	@RequestMapping(value="/logOut",method=RequestMethod.GET)
	public String logOut(HttpSession session){
		  String username = (String) session.getAttribute("loginUsername");
		  if(username!=null && !username.isEmpty()){
			  session.removeAttribute("usernameLogin");
		  }else{
			  
		  }
		  return "/user/login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(UserRequest userRequest, Map<String, Object> map) throws Exception{
		  String username = userRequest.getUsername();
		  String password = userRequest.getPassword();

		  Map<String,String> errorsMap = loginValidate(username, password);
		  if(null!=errorsMap && !errorsMap.isEmpty()){
				String errorsMsg = "错误信息提示：";
				for (String s : errorsMap.values()) {
					errorsMsg = errorsMsg + s;
				}
				setMessage(map, TOLOGIN, errorsMsg);
			}else{
				boolean loginFlag = userService.login(username, password);
				if(loginFlag){
					//创建cookie
					Cookie cookie = new Cookie(username, password);
					//一周以内有效
					cookie.setMaxAge(60*60*24*7);
					cookie.setPath(request.getContextPath());
					response.addCookie(cookie);
					/**单位为秒，设置为-1永不过期*/
					session.setMaxInactiveInterval(-1);
					session.setAttribute("usernameLogin", username);
					setMessage(map, INDEX, "恭喜您，登陆成功！");
				}else{
					setMessage(map, TOLOGIN, "登陆失败：用户名或者密码错误！");
				}
			}
		  return "/back_global_message";
	}  
	
	@RequestMapping(value="/toRegister", method=RequestMethod.GET)
	public String toRegister(){
		  return "/user/register";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String register(User user, String password2, String authcode, HttpSession httpSession, Map<String, Object> map){
		Map<String,String> errorsMap = registerValidate(user, password2, authcode, httpSession);
		if(errorsMap.size()>0 && !errorsMap.isEmpty()){
			String errorsMsg = "错误信息提示：";
			for (String s : errorsMap.values()) {
				errorsMsg = errorsMsg + s;
			}
			setMessage(map, TOREGISTER, errorsMsg);
		}else{
			try {
				String state = userService.register(user); 
				if(state.equals("UsernameAlreadyExist")){
					setMessage(map, TOREGISTER, "注册失败，用户名已经被注册！");
					
				}else if(state.equals("EmailAlreadyExist")){
					setMessage(map, TOREGISTER, "注册失败，邮箱已经被注册！");
					 
				}else if(state.equals("MobileAlreadyExist")){
					setMessage(map, TOREGISTER, "注册失败，手机已经被注册！");
					 
				}else if(state.equals("success")){
					setMessage(map, TOLOGIN, "恭喜您，注册成功！");
				}
			} 
			catch (Exception e) {
				e.printStackTrace();
			}
		}
	      return "/back_global_message";
	}
	
	private Map<String, Object> setMessage(Map<String, Object> map, String nextUrl, String global_message) {
		map.put("nextUrl", nextUrl);
		map.put("global_message", global_message);
		return map;
	}
	
	private Map<String,String> registerValidate(User user, String password2, String authcode, HttpSession httpSession){
		Map<String, String> errors = new HashMap<String, String>();
		
		String username = user.getUsername();  
		String password = user.getPassword();
		String mobile = user.getMobile();
		String email = user.getEmail();
		
		//验证用户名
		if(null==username || username.isEmpty()){
			errors.put("username", "用户名不能为空！！");
		}else if(username.length()<6 || username.length()>20){
			errors.put("username", "用户名长度为6~20位！！");
		}else if(!username.matches("^[A-Za-z0-9_\\-\\u4e00-\\u9fa5]+$")){
			//正则表达式校验！
			errors.put("username", "用户名只能由中文、英文、数字及“_”、“-”组成!");
		}
		
		//验证密码
		if(null==password || password.isEmpty()){
			errors.put("pwd", "密码不能为空！！");
		}else if(password.length()<6 || password.length()>20){
			errors.put("pwd", "密码长度为6~20位！！");
		}else if(!password.matches("^.*[A-Za-z0-9\\w_-]+.*$")){
				errors.put("pwd", "密码只能由英文、数字及标点符号组成");
		}
		
		//验证重复密码
		if(null==password2 || password2.isEmpty()){
			errors.put("pwd2", "重复密码不能为空！！");
		}else if(password2.length()<6 || password2.length()>20){
			errors.put("pwd2", "重复密码长度为6~20位！！");
		}else if(!password2.matches("^.*[A-Za-z0-9\\w_-]+.*$")){
			errors.put("pwd2", "重复密码只能由英文、数字及标点符号组成!");
		}
		
		//验证邮箱
		if(null==email || email.isEmpty()){
			errors.put("email", "邮箱不能为空！！");
		}else if(email.length()<6 || email.length()>20){
			errors.put("email", "邮件地址只能在50个字符以内！！");
		}else if(!email.matches("^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+$")){
			errors.put("email", "邮箱格式不正确!");
		}
		 
		//验证手机
		if(null==mobile || mobile.isEmpty()){
			errors.put("mobile", "手机不能为空！！");
		}else if(!mobile.matches("^0?(13|15|18|14)[0-9]{9}$")){
				errors.put("mobile", "手机号码不符合规则,请重新填写!");
		}
		//验证码
		if(null==authcode || authcode.isEmpty()){ 
			errors.put("authcode", "验证码不能为空！");
		}else{
			String oldAuthCode = (String) httpSession.getAttribute("AUTHCODE");
			System.out.println(oldAuthCode);
			System.out.println(authcode);
			if(!authcode.equals(oldAuthCode)){
				errors.put("authcode", "验证码输入错误！");
			}
		}
		return errors;
	}	
	
	private Map<String,String> loginValidate(String username, String password){
		Map<String, String> errorsMap = new HashMap<String, String>();
		//后台验证
		//验证用户名
		if(null==username || username.isEmpty()){
			errorsMap.put("username", "用户名不能为空!");
		}else if(username.length()<6 || username.length()>20){
			errorsMap.put("username", "用户名长度为6~20位！");
		}else if(!username.matches("^[A-Za-z0-9_\\-\\u4e00-\\u9fa5]+$")){
			//正则表达式校验！
			errorsMap.put("username", "用户名只能由中文、英文、数字及“_”、“-”组成!");
		}
		
		//验证密码
		if(null==password || password.isEmpty()){
			errorsMap.put("password", "密码不能为空！");
		}else if(password.length()<6 || password.length()>20){
			errorsMap.put("password", "密码长度为6~20位！");
		}else if(!password.matches("^.*[A-Za-z0-9\\w_-]+.*$")){
			//正则表达式校验！
			errorsMap.put("password", "密码只能由英文、数字及标点符号组成!");
		}
		
		return errorsMap;
	}	
}  
     