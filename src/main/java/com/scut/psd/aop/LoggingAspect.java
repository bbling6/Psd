package com.scut.psd.aop;

import lombok.extern.slf4j.Slf4j;
import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LoggingAspect {

	@Pointcut("execution(public * com.scut.psd.controller.DataProcessController.*(..))")
	public void log(){}

	 @Before("log()")
	 public void beforeAllMethod(JoinPoint joinPoint) {
//		 String methodName = joinPoint.getSignature().getName();
//		 log.info("The method " + methodName + " begin!");
	 }

	 @After("log()")
	 public void afterAllMethod(JoinPoint joinPoint){
//		 String methodName = joinPoint.getSignature().getName();
//		 log.info("The method " + methodName + " end!");
	 }
}
