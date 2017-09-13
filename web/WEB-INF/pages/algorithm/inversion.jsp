<%@ page language="java"  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<div class="signalSelectFormCss" id="inversion_box">
		<h4>
		   <a href="javascript:closeDialogBox()" title="关闭窗口">&times;</a>
			   <span style="color:#ffffff">反演算法<span/>
		</h4>
<div class="innerDiv">
	  <form id="signalDataForm" method="post">
		  <table id="signalDataTable">
		  	        <caption id="cap">
						<span style="font-weight: bold">请选择反演算法参数：<span>
					</caption>
		  	     <tr > 
		  	          <td width="30%">声压:</td>
		  	     	  <td> 	
		  	     	         <input id="inversionDownFrequency" type="text" placeholder="" value=""/>
					  </td>
					  <td><span>(/pa)</span>
					  </td>
		  	     </tr>
		  	     
   	  	         <tr >
		  	        <td width="30%" >波数:</td>
		  	     	  <td>
		  	     	         <input id="inversionSignalLevel" type="text" placeholder="" value=""/>
					  </td>
					  <td><span>(/m^-1)</span>
					  </td>
		  	     </tr>
		  	     
	  	        <tr>
		  	        <td width="30%">测量距离:</td>
		  	     	  <td>
		  	     	         <input id="inversionUpFrequency" type="text" placeholder="" value=""/>
					  </td>
					  <td><span>(/m)</span>
					  </td>
		  	     </tr>
		  	     
     	  	      <tr>
		  	        <td width="30%">换能器半径:</td>
		  	     	  <td> 	
		  	     	         <input id="inversionSignalSamplingFrequency" type="text" placeholder="" value=""/>
					  </td>
					  <td><span>(/cm)</span>
					  </td>
		  	     </tr>
		  	     
		  	     
      	  	      <tr>
		  	        <td width="30%">发射信号脉宽:</td>
		  	     	  <td> 	
		  	     	         <input id="inversionSignalPeriod" type="text" placeholder="" value=""/>
					  </td>
					  <td><span>(/ms)</span>
					  </td>
		  	     </tr>
	  			<tr>
		  	          <td colspan="3" align="center"> 	
				       <a href="javascript:void(0);" id="btn_inversion_confirm" class="btn_submit">
				       	            确认
				       </a>
					  </td>
		  	     </tr>
		  </table>
    </form>
 </div> 
</div>
<script type="text/javascript">
	  $(function(){
		    var $btnInversionConfirm = $("#btn_inversion_confirm");
		    $btnInversionConfirm.click(function(){
				easyDialog.close();
		    });
	    });
</script>
                 
                
                
                
                
                
            
                  
        
    	
    
			

                
    
