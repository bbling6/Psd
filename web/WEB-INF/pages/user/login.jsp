<%@ page language="java" 
		 contentType="text/html; charset=UTF-8" 
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" 
		  content="text/html; charset=utf-8">
</meta>
<meta name="viewport" 
	    content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
</meta>
<title>登陆界面</title>
<meta content="用户登录"
	    name="keywords">
</meta>
<meta content="用户登录"
	    name="description">
</meta>
<meta http-equiv="Cache-Control"
	    content="max-age=180">
</meta>
<meta name="apple-mobile-web-app-capable" 
	    content="yes">
	    </meta>
<meta name="apple-mobile-web-app-status-bar-style" 
	    content="black">
	    </meta>
<meta name="format-detection" 
	    content="telephone=no">
	    </meta>
<meta http-equiv="x-dns-prefetch-control" 
	    content="on">
	    </meta>
<link href="/Psd-ssm/media/css/basestyle.css"
	    rel="stylesheet"
	    type="text/css" >
</link>
<link href="/Psd-ssm/media/css/mc.css"
	    rel="stylesheet" 
	    type="text/css" >
</link>
<link href="/Psd-ssm/media/css/user_center.css" 
	    rel="stylesheet" 
	    type="text/css" >
</link>
<script src="/Psd-ssm/media/js/jquery-1.8.3.min.js">
</script>
<link href="/Psd-ssm/media/css/font-awesome.min.css"
	    rel="stylesheet" 
	    type="text/css">
</link>
</head>
<body>
<div class="login-head">
  <div class="wrap">
    <div class="logo">
    	     <a href="index.html"></a>
    </div>
    <div class="txt">
    	   超声波液体悬浮物浓度在线测量软件系统登录界面
    </div>
  </div>
</div>
<div class="login-body">
  <div class="loginbox">
    <div class="tit">
    	    <span>
    	    	 登陆
    	    </span>
     <a href="/Psd-ssm/user/toRegister">
     	    还没有账号？立即注册
     </a>
    </div>
    <form id="login_form" action="/Psd-ssm/user/login" method="post">
	  <div class="input-group">
	    <span class="input-group-addon">
	    	    <i class="fa fa-user"></i>
	    </span>
	    <input type="text" name="username"
	           placeholder="请输入账号" class="form-control">
        </input>
	  </div>
	  <div class="input-group">
	    <span class="input-group-addon">
	    	     <i class="fa fa-unlock-alt"></i>
	    </span>
	    <input type="password" name="password" 
	           maxlength="20" placeholder="请输入密码" class="form-control">
        </input>
	  </div>
	  
	  <div class="checkbox-group">
	       <a href="login_chage_psw.html" class="forget-pdw">忘记密码</a>
	     <label class="icon-checkbox">
	    	   <input type="checkbox" checked="" name="autolanding" value="1">
	    	    		 一周内自动登录
       </label>
	  </div>
	  <div class="login-box-btn">
	       <a href="javascript:btnLogin();" class="btn-login">
	       	       登 录
	       </a>
	  </div>
   </form>
  </div>
</div>

<script type="text/javascript">
		function getAuthcode(){
			var $authcodeImg = $("#authcodeImg");
			$authcodeImg.attr("src","/Psd-ssm/authcode.img?xx="+Math.random());
		}
		function btnLogin(){
			var loginForm = document.getElementById("login_form");
			loginForm.submit();
		}
</script>
</script>
</body>
</html>    
            
                    
          
	   	
                
            
            
            			  
    
           
       	
				     
             		
            
           
        
    			 
        	
       
            
            
            
            
    	
                         
       
                                                     
                            
					      
                
        
       	
					     
           
            
             
        	
					
            
            
                
                           
                

        
                
                        
                
                
                    	
               
             
                 
                
                
                
                
                
            
                  
        
    	
    
			

                
    
