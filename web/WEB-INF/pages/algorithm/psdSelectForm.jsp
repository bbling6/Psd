<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="psdSelectFormCss2" id="psd_box">
		<h4> 
		   <a href="javascript:closeDialogBox()" title="关闭窗口">&times;</a>
			   <span style="color:#ffffff">功率谱估计法</span> 
		<h4>
	<div class="innerDiv" id="signals">
			  <table id="psdDataTable">
						<caption id="cap">
							<span style="font-weight: bold">请选择功率谱估计法：</span>
						</caption>
					 <tr>
						  <td width="30%">
							<a href="javascript:void(0);" id="pyulear" class="btn_submit">
								 Yule—Walker算法
						   </a>
						  </td>
					 </tr>
					<tr>
						<td width="30%">
						   <a href="javascript:void(0);" id="pburg" class="btn_submit">
								 Burg算法
						   </a>
						</td>
					 </tr>
					  <tr>
						 <td width="30%">
						  <a href="javascript:void(0);" id="pcov" class="btn_submit">
								  协方差算法
						   </a>
						</td>
					 </tr>
					 <tr>
						 <td width="30%">
						  <a href="javascript:void(0);" id="pmcov" class="btn_submit">
								   改进的协方差算法
						   </a>
						</td>
					 </tr>
			  </table>
	 </div>
</div>

<jsp:include page="/WEB-INF/pages/algorithm/pburg.jsp"/>
<jsp:include page="/WEB-INF/pages/algorithm/pyulear.jsp"/>
<jsp:include page="/WEB-INF/pages/algorithm/pcov.jsp"/>
<jsp:include page="/WEB-INF/pages/algorithm/pmcov.jsp"/>

<script type="text/javascript">
    var algorithmJudge = null;
    $(function(){
    	var $pyulear = $("#pyulear");
    	$pyulear.click(function(){
            algorithmJudge = "pyulearAlgorithm";
    		openDialogBox('pyulear_box');
    	});
    	var $pburg = $("#pburg");
    	$pburg.click(function(){
    		algorithmJudge = "pburgAlgorithm";
    		openDialogBox('pburg_box');
    	});
    	var $pcov = $("#pcov");
    	$pcov.click(function(){
    		algorithmJudge = "pcovAlgorithm";
    		openDialogBox('pcov_box');
    	});
    	var $pmcov = $("#pmcov");
    	$pmcov.click(function(){
    		algorithmJudge = "pmcovAlgorithm";
    		openDialogBox('pmcov_box');
    	});
    });
</script>
               
   
             
                 
                
                
                
                
                
            
                  
        
    	
    
			

                
    
