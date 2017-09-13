package com.scut.psd.web.filter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
    
    	String usernameLogin =  (String) request.getSession().getAttribute("usernameLogin");
    	
	    if(usernameLogin!=null && !usernameLogin.isEmpty()){
	    	/**拦截器放行*/
	    	return super.preHandle(request, response, handler);
	    }else{
	    	response.sendRedirect(request.getContextPath()+"/user/toLogin");
	    	return false;
	    }
   }
    
}
