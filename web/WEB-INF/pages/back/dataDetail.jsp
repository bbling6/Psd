<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="pragma" content="no-cache">
</meta>
<meta http-equiv="cache-control" content="no-cache">
</meta>
<meta http-equiv="expires" content="0">   
</meta>
<meta http-equiv="Content-Type" 
	  content="text/html; charset=utf-8">
	  </meta>
<meta name="viewport" 
      content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
      </meta>
<title>悬浮物检测结果显示</title>
<meta content="检测结果显示" 
      name="keywords">
      </meta>
<meta content="检测结果显示" 
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
      type="text/css" />
<link href="/Psd-ssm/media/css/mc.css" 
      rel="stylesheet" 
      type="text/css" />
<script src="/Psd-ssm/media/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	    src="/Psd-ssm/media/easydialog/js/easydialog.js"></script>
<link href="/Psd-ssm/media/css/jquery.bxslider.css"
	  rel="stylesheet"
	  type="text/css"></link>
<link href="/Psd-ssm/media/css/font-awesome.min.css"
	  rel="stylesheet" 
	  type="text/css">
	  </link>
 <link href="/Psd-ssm/media/easydialog/css/signalSelect.css"
	  rel="stylesheet" 
	  type="text/css">
	  </link>
 <link href="/Psd-ssm/media/easydialog/css/algorithmSelect.css"
	  rel="stylesheet" 
	  type="text/css">
	  </link>
<link href="/Psd-ssm/media/easydialog/css/dataAdd.css"
	  rel="stylesheet"
	  type="text/css">
	  </link>
<script type="text/javascript"
        src="/Psd-ssm/media/js/utils.js">
</script>
</head>
<body>
<!--header-->
<div class="header">
  <div class="topper">
    <div class="wrap cl">
     <div class="t-left">
     	<span style="font-size: 20px;">
     				欢迎来到超声波液体悬浮物浓度在线测量软件系统
     	</span>
     </div>
      <div class="t-right">
        <ul class="cl">
          <li class="user-list">
            <div class="top-user">
            	<img src="/Psd-ssm/media/upload/f09f91a6.png" />
            			<span style="font-size:20px; ">${sessionScope.usernameLogin }</span>
            </div>
          </li>
          <li>
          	<div class="top-user">
          	  <a href="javascript:location.reload();">
          	  	<span style="font-size:20px;">
					   刷新页面
          	  	</span>
          	  </a>
          	</div>
          </li>
          <li>
  	  	     <div class="top-user">
          	   <a href="/Psd-ssm/index">
          	   <span style="font-size:20px;">
					   回到首页
          	  	</span>
          	   </a>
			 </div>
		  </li>
        </ul>
      </div>
    </div>
  </div>
</div>

<style type="text/css">
	#div0Caption{
		width:400px;
		position:absolute;top:75px;
		margin-left: 200px;
	}
	#div0{
		position:absolute;top:140px;
		margin-left: 200px;
	}

	#div1Caption{
			width:100px;
 	 		position:absolute;top:75px;   
 			margin-left: 780px; 
		}
	#div1{
 	 		position:absolute;top:140px;   
 			margin-left: 780px; 
	}
    #div2Caption{
	   	    width:100px;
	 		position:absolute;top:75px;   
			margin-left: 940px; 
		}
	#div2{
	 		position:absolute;top:140px;   
			margin-left: 940px; 
	}
    #div3Caption{
	   		width:100px;
	 		position:absolute;top:75px;   
			margin-left: 1100px; 
		}
	#div3{
	 		position:absolute;top:140px;   
			margin-left: 1100px; 
	}
    #div4Caption{
		    width:100px;
	 		position:absolute;top:75px;   
			margin-left: 1260px; 
		}
	#div4{
	 		position:absolute;top:140px;   
			margin-left: 1260px; 
	}
	.divTable{
	 	 	width:100px;
	 	 	height:410px; 
	 	 	border: 1px solid #000000;
	}
	/*设置div大小*/
	.divAll{
	 	 	width:125px; 
	 	 	height:460px; 
	 	 	overflow:scroll; 
	 	 	overflow-x:hidden;
	}
	/*设置div大小*/
	.divAll2{
		width:400px;
		height:450px;
		overflow:scroll;
		overflow-x:hidden;
	}
	.divTable2{
		width:400px;
		height:450px;
		border: 1px solid #8b2d3b;
	}
	/*设置div大小*/
	.td{
		font-size: 14px;
	}
</style>

<!--操作选项-->
<div id="mainbody" class="wrap" style="background:url(/Psd-ssm/media/upload/123456789.jpg);">

		<!-- 第一个div -->
		<div id="div0Caption">
			<span style="font-size: 20px; font-weight:bold;">算法和发射信号参数:</span>
		</div>
		<div class="divAll2" id="div0" >
			<table class="divTable2">
				<tr>
					<td class="td">algorithmType——>${calculateData.algorithm.algorithmType }</td>
				</tr>
				<tr>
					<td class="td">order——>${calculateData.algorithm.order }</td>
				</tr>
				<tr>
					<td class="td">nfft——>${calculateData.algorithm.nfft }</td>
				</tr>
				<tr>
					<td class="td">algorithmSamplingFrequency——>${calculateData.algorithm.algorithmSamplingFrequency }</td>
				</tr>
				<tr>
					<td class="td">downFrequency——>${calculateData.launchSignal.downFrequency }</td>
				</tr>
				<tr>
					<td class="td">upFrequency——>${calculateData.launchSignal.upFrequency }</td>
				</tr>
				<tr>
					<td class="td">signalSamplingFrequency——>${calculateData.launchSignal.signalSamplingFrequency }</td>
				</tr>
				<tr>
					<td class="td">signalLevel——>${calculateData.launchSignal.signalLevel }</td>
				</tr>
				<tr>
					<td class="td">signalPeriod——>${calculateData.launchSignal.signalPeriod }</td>
				</tr>
			</table>
		</div>

        <!-- 第一个div -->
        <div id="div1Caption">
        	  <span style="font-size: 20px; font-weight:bold;">悬浮物浓度ssc(g/L):</span>
        </div>
     	<div class="divAll" id="div1" >
     			<table class="divTable">
	  				 <c:choose>	
						<c:when test = "${null==requestScope.calculateData}  ">
							<tr>
							   <td align="center">暂时没有数据！<td>
							</tr>
						</c:when> 
						
						<c:otherwise> 
						  <c:forEach items="${calculateData.resultMap['smc'] }" var="data">
									<tr align="center"> 
						 				<td style="font-size: 14px">${data }</td>
								    </tr>
						    </c:forEach>
						</c:otherwise>
					</c:choose>
     			</table>
	    </div>
	    
	    <!-- 第二个div -->
	    <div id="div2Caption">
        	 <span style="font-size: 20px; font-weight:bold;">悬浮物浓度相对比值:</span>
        </div>
     	<div class="divAll" id="div2" >
     			<table class="divTable">
				   <c:choose>	
						<c:when test = "${null==requestScope.calculateData}  ">
							<tr>
							   <td align="center">暂时没有数据！<td>
							</tr>
						</c:when> 
						
						<c:otherwise>
						  <c:forEach items="${calculateData.resultMap['smcRelative'] }" var="data">
									<tr align="center"> 
						 				<td style="font-size: 14px">${data }</td>
								    </tr>
						    </c:forEach>
						</c:otherwise>
					</c:choose>
     			</table>
	    </div>
	    
	    <!-- 第三个div -->
	    <div id="div3Caption">
        	  <span style="font-size: 20px; font-weight:bold;">悬浮物线度(mm):</span>
        </div>
     	<div class="divAll" id="div3" >
     			<table class="divTable">
     				  <c:choose>	
						<c:when test = "${null==requestScope.calculateData}  ">
							<tr>
							   <td align="center">暂时没有数据！<td>
							</tr>
						</c:when> 
						
						<c:otherwise> 
						  <c:forEach items="${calculateData.resultMap['sms'] }" var="data">
									<tr align="center"> 
						 				<td style="font-size: 14px">${data }</td>
								    </tr>
						    </c:forEach>
						</c:otherwise>
					</c:choose>
     			</table>
	    </div>
	    
	    <!-- 第四个div -->
        <div id="div4Caption">
        	   <span style="font-size: 20px; font-weight:bold;">悬浮物线度相对比值：</span>
        </div>
     	<div class="divAll" id="div4" >
     			<table class="divTable">
     					  <c:choose>	
						<c:when test = "${null==requestScope.calculateData}  ">
							<tr>
							   <td align="center">暂时没有数据！<td>
							</tr>
						</c:when>
						<c:otherwise>
						  <c:forEach items="${calculateData.resultMap['smsRelative'] }" var="data">
									<tr align="center"> 
						 				<td style="font-size: 14px">${data }</td>
								    </tr>
						    </c:forEach>
						</c:otherwise>
					</c:choose>
     			</table>
	    </div>
</div>
</body>
</html>
