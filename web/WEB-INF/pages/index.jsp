<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="pragma" content="no-cache"></meta>
<meta http-equiv="cache-control" content="no-cache"></meta>
<meta http-equiv="expires" content="0"></meta>   
<meta http-equiv="Content-Type" 
	  content="text/html; charset=utf-8">
	  </meta>
<meta name="viewport" 
      content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
      </meta>
<title>主界面</title>
<meta content="液体悬浮物检测" 
      name="keywords">
      </meta>
<meta content="液体悬浮物检测" 
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
<script src="/Psd-ssm/media/js/jquery-1.8.3.min.js">
        </script>
<script type="text/javascript"
	    src="/Psd-ssm/media/easydialog/js/easydialog.js">
	    </script>
<link href="/Psd-ssm/media/css/jquery.bxslider.css"
	  rel="stylesheet"
	  type="text/css">
	  </link>
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
<link href="/Psd-ssm/media/easydialog/css/check.css"
	  rel="stylesheet" 
	  type="text/css">
	  </link>
<link href="/Psd-ssm/media/easydialog/css/quit.css"
	  rel="stylesheet" 
	  type="text/css">
	  </link>
<link href="/Psd-ssm/media/easydialog/css/usinghelp.css"
	  rel="stylesheet" 
	  type="text/css">
	  </link>
<link href="/Psd-ssm/media/easydialog/css/psdSelect.css"
	  rel="stylesheet" 
	  type="text/css">
</link>
<link href="/Psd-ssm/media/easydialog/css/hardwareSelect.css"
	  rel="stylesheet" 
	  type="text/css">
</link>
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
          	  	<span style="font-size:20px; ">
          	  		刷新页面
          	  	</span>
          	  </a>
          	</div>
          </li>
          <li>
  	  	     <div class="top-user">
          	   <a href="/Psd-ssm/user/logOut">
          	   <span style="font-size:20px; ">
          	  		退出登录
          	  	</span>
          	   </a></li>
  	   	     </div>
        </ul>
      </div>
    </div>
  </div>
</div>

<div class="wrap" style="background:url(/Psd-ssm/media/upload/123456789.jpg);">
  <div class="zp-upload">
  	<div align="middle" class="txt">
  		   <span style="font-size: 25px;">
  		   		  测量功能选择
  		   </span>
  	</div>
    <a href="javascript:void(0)" class="sc"  onclick="openDialogBox('hardware_box')">
    		<i class="fa fa-hand-paper-o"></i>
    	          硬件接口设置
    </a>
    <a href="javascript:void(0)" class="sc" onclick="openDialogBox('signal_box')">
    		<i class="fa fa-hand-o-right"></i>
    	         发射信号设置
    </a>
    <a href="javascript:void(0)" class="sc" onclick="openDialogBox('algorithm_box')">
    		<i class="fa fa-hand-paper-o"></i>
    	         算法参数设置
    </a>
    <a  id="visualDetection" href="javascript:void(0)" class="sc">
    		<i class="fa fa-hand-o-right"></i>
    	         可视化检测
    </a>
    <a href="/Psd-ssm/process/list" class="sc">
      <i class="fa fa-hand-paper-o"></i>
		         数据查询
    </a>
          <a href="javascript:void(0)" class="sc" onclick="openDialogBox('usinghelp_box')">
      <i class="fa fa-hand-o-right"></i>
				 帮助中心
    </a>
    </a>
          <a href="javascript:void(0)" class="sc" onclick="openDialogBox('checkUpdate_box')">
      <i class="fa fa-hand-paper-o"></i>
			     检查更新
    </a>
      </a>
          <a href="javascript:void(0)" class="sc" onclick="openDialogBox('quit_box')" >
      <i class="fa fa-hand-o-right"></i>
				 退出应用
    </a>
  </div>
</div>

<jsp:include page="/WEB-INF/pages/main/hiddenForm.jsp"/>
<jsp:include page="/WEB-INF/pages/signal/signalSelectForm.jsp"/>
<jsp:include page="/WEB-INF/pages/algorithm/algorithmSelectForm.jsp"/>
<jsp:include page="/WEB-INF/pages/main/updateCheck.jsp"/>
<jsp:include page="/WEB-INF/pages/main/quit.jsp"/>
<jsp:include page="/WEB-INF/pages/main/help.jsp"/>
<jsp:include page="/WEB-INF/pages/main/hardwareSelectForm.jsp"/>

<script type="text/javascript">
    //打开对话框
	function openDialogBox(boxId){
		easyDialog.open({
			container:boxId,
		}); 
    }
	//关闭对话框
	function closeDialogBox(){
		easyDialog.close();
	}
</script>

<!-- 可视化检测 -->
<script type="text/javascript">
        $(function(){
        	$("#visualDetection").click(function(){

				var signal = {"downFrequency":$("#downFrequency").val(),
						      "upFrequency":$("#upFrequency").val(),
						      "signalSamplingFrequency":$("#signalSamplingFrequency").val(),
						      "signalLevel":$("#signalLevel").val(),
						      "signalPeriod":$("#signalPeriod").val()
				};
					switch(algorithmJudge)
					{
						case "pyulearAlgorithm":
							  pyulearMethod(signal);
							  break;
						  
						case "pburgAlgorithm":
							  pburgMethod(signal);
						      break;
						      
						case "pcovAlgorithm":
							  pcovMethod(signal);
						      break;
						  
						case "pmcovAlgorithm":
							  pmcovMethod(signal);
						      break;
					}
        	});
        	
        });
        
			function pyulearMethod(signal){
				var algorithm = {"order":$("#pyulear_order").val(),
						   	     "nfft":$("#pyulear_nfft").val(),
						   	     "algorithmSamplingFrequency":$("#pyulear_samplingFrequency").val(),
						   	     "algorithmType":"pyulear"};
				submitForm(signal, algorithm);
				return true;
			}
			
			function pburgMethod(signal){
				var algorithm = {"order":$("#pburg_order").val(),
						   	     "nfft":$("#pburg_nfft").val(),
						   	     "algorithmSamplingFrequency":$("#pburg_samplingFrequency").val(),
						   	     "algorithmType":"pburg"};
				submitForm(signal, algorithm);
				return true;
			}
            
			function pcovMethod(signal){
				var algorithm = {"order":$("#pcov_order").val(),
						   	     "nfft":$("#pcov_nfft").val(),
						   	     "algorithmSamplingFrequency":$("#pcov_samplingFrequency").val(),
						   	     "algorithmType":"pcov"};
				submitForm(signal, algorithm);
				return true;
			}
			
			function pmcovMethod(signal){
				var algorithm = {"order":$("#pmcov_order").val(),
						   	     "nfft":$("#pmcov_nfft").val(),
						   	     "algorithmSamplingFrequency":$("#pmcov_samplingFrequency").val(),
						   	     "algorithmType":"pmcov"};
				submitForm(signal, algorithm);
				return true;
			}

			 function submitForm(signal, algorithm){
                 $("#downFrequencyInput").val(signal["downFrequency"]);
                 $("#upFrequencyInput").val(signal["upFrequency"]);
                 $("#signalSamplingFrequencyInput").val(signal["signalSamplingFrequency"]);
                 $("#signalLevelInput").val(signal["signalLevel"]);
                 $("#signalPeriodInput").val(signal["signalPeriod"]);
                 $("#orderInput").val(algorithm["order"]);
                 $("#nfftInput").val(algorithm["nfft"]);
                 $("#algorithmSamplingFrequencyInput").val(algorithm["algorithmSamplingFrequency"]);
                 $("#algorithmTypeInput").val(algorithm["algorithmType"])

                 var $hiddenForm = $("#hiddenForm");
                 var url = "/Psd-ssm/process/handle";
                 $hiddenForm.attr("action",url);
                 $hiddenForm.submit();

                 return true;
             }
	        
</script>
</body>
</html>
