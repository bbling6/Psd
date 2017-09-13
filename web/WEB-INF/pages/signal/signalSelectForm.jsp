<%@ page language="java"  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<div class="signalSelectFormCss" id="signal_box">
		<h4> 
		   <a href="javascript:closeDialogBox()" title="关闭窗口">&times;</a>
			   <span style="color:#ffffff">发射信号设置<span/>
		</h4>
<div class="innerDiv">
	  <form id="signalDataForm" method="post">
		  <table id="signalDataTable">
		  	        <caption id="cap">
						<span style="font-weight: bold">请选择信号参数：<span>
					</caption>
		  	     <tr > 
		  	          <td width="30%">下限频率:</td>
		  	     	  <td> 	
		  	     	         <input id="downFrequency" type="text" placeholder="" value="5000"/>
					  </td>
					  <td><span>(/HZ)</span>
					  </td>
		  	     </tr>
		  	     
	  	        <tr >
		  	        <td width="30%">上限频率:</td>
		  	     	  <td>
		  	     	         <input id="upFrequency" type="text" placeholder="" value="20000"/>
					  </td>
					  <td><span>(/HZ)</span>
					  </td>
		  	     </tr>
		  	     
     	  	      <tr >
		  	        <td width="30%">采样频率:</td>
		  	     	  <td> 	
		  	     	         <input id="signalSamplingFrequency" type="text" placeholder="" value="150000"/>
					  </td>
					  <td><span>(/HZ)</span>
					  </td>
		  	     </tr>
		  	     
   	  	         <tr >
		  	        <td width="30%" >信号幅度:</td>
		  	     	  <td>
		  	     	         <input id="signalLevel" type="text" placeholder="" value="3"/>
					  </td>
					  <td><span>(/V)</span>
					  </td>
		  	     </tr>
		  	     
      	  	      <tr>
		  	        <td width="30%">信号周期:</td>
		  	     	  <td> 	
		  	     	         <input id="signalPeriod" type="text" placeholder="" value="0.02"/>
					  </td>
					  <td><span>(/ms)</span>
					  </td>
		  	     </tr>
	  			<tr>
		  	          <td colspan="3" align="center"> 	
				       <a href="javascript:void(0);" id="btn_signal_confirm" class="btn_submit">
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
		    var $btnSignalConfirm = $("#btn_signal_confirm");
		    $btnSignalConfirm.click(function(){
				easyDialog.close();
		    });
	    });
</script>
          
   
             
                 
                
                
                
                
                
            
                  
        
    	
    
			

                
    
