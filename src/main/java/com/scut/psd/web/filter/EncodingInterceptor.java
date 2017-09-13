package com.scut.psd.web.filter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class EncodingInterceptor extends HandlerInterceptorAdapter{
	
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		//设置编码
    	request.setCharacterEncoding("utf-8");
    	response.setCharacterEncoding("utf-8");
		
		//设置完编码后，放行
		return super.preHandle(request, response, handler);
   }
    
}
