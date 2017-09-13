<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="signalSelectFormCss" id="pburg_box" style="height:500px;">
		<h4>
		   <a href="javascript:closeDialogBox()" title="关闭窗口">&times;</a>
			   <span style="color:#ffffff">Burg算法<span/>
		</h4>
<div class="innerDiv">
		  <table id="signalDataTable">
		  	        <caption id="cap">
						<span style="font-weight: bold">请选择Burg算法参数：<span>
					</caption>
		  	     <tr>
		  	          <td width="30%">输入阶数:</td>
		  	     	  <td>
		  	     	        <input id="pburg_order" type="text" value="1024"/>
					  </td>
					  <td><span></span>
					  </td>
		  	     </tr>
	  	        <tr>
		  	        <td width="30%">FFT变换点数:</td>
		  	     	  <td>
		  	     	         <input id="pburg_nfft" type="text"  value="256"/>
					  </td>
					  <td><span></span>
					  </td>
		  	     </tr>
     	  	      <tr >
		  	        <td width="30%">采样频率:</td>
		  	     	  <td> 	
		  	     	         <input id="pburg_samplingFrequency" type="text"  value="81000"/>
					  </td>
					  <td><span>(/HZ)</span>
					  </td>
		  	     </tr>
		  	      <tr >
		  	     	  <td colspan="3" align="center">
					       <a href="javascript:void(0);" id="btn_pburg_confirm" class="btn_submit">
					       	            确认
					       </a>
					  </td>
		  	     </tr>
		  </table>
 </div> 
</div>
<script type="text/javascript">
    $(function(){
	    var $btnPburgConfirm = $("#btn_pburg_confirm");
	    $btnPburgConfirm.click(function(){
			easyDialog.close();
	    });
    });
</script>
          
   
             
                 
                
                
                
                
                
            
                  
        
    	
    
			

                
    
