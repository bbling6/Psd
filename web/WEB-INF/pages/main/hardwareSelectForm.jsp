<%@ page language="java"  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<div class="hardwareSelectFormCss" id="hardware_box">
		<h4> 
		   <a href="javascript:closeDialogBox()" title="关闭窗口">&times;</a>
			   <span style="color:#ffffff">硬件接口设置<span/>
		</h4>
<style type="text/css">
	.select{
		border:1px solid;	
		width: 245px;
	}
</style>
<div class="innerDiv">
	  <form id="hardwareDataForm" method="post">
		  <table id="hardwareDataTable">
		  	        <caption id="cap">
						<span style="font-weight: bold">请选择硬件接口参数：<span>
					</caption>
		  	     <tr > 
		  	          <td width="30%">串口名:</td>
		  	     	  <td> 	
						<select class="select">
						  <option value="">com1</option>
						  <option value="">com2</option>
						  <option value="">com3</option>
						  <option value="">com4</option>
						  <option value="">com5</option>
						  <option value="">com6</option>
						  <option value="">com7</option>
						  <option value="">com8</option>
						  <option value="">com9</option>
						  <option value="">com0</option>
						  <option value="">com11</option>
						  <option value="">com12</option>
						</select>
					  </td>
					  <td><span> </span>
					  </td>
		  	     </tr>
		  	     
	  	        <tr >
		  	        <td width="30%">波特率:</td>
		  	     	  <td>
		  	     	  	<select class="select">
						  <option value ="">2400</option>
						  <option value ="">4800</option>
						  <option value="">9600</option>
						  <option value="">19200</option>
    					  <option value="">38400</option>
						  <option value="">57600</option>
						  <option value="">115200</option>
						</select>
					  </td>
					  <td><span> </span>
					  </td>
		  	     </tr>
		  	     
     	  	      <tr >
		  	        <td width="30%">数据位:</td>
		  	     	  <td> 	
	  	     	        <select class="select">
						  <option value ="">5</option>
						  <option value ="">6</option>
						  <option value="">7</option>
						  <option value="">8</option>
						</select>
					  </td>
					  <td><span> </span>
					  </td>
		  	     </tr>
		  	     
   	  	         <tr >
		  	        <td width="30%" >校验位:</td>
		  	     	  <td>
		  	     	   <select class="select">
						  <option value ="">None</option>
						  <option value ="">Even</option>
						  <option value="">Odd</option>
						  <option value="">Mark</option>
    					  <option value="">Space</option>
						</select>
					  </td>
					  <td><span> </span>
					  </td>
		  	     </tr>
		  	     
      	  	      <tr>
		  	        <td width="30%">停止位:</td>
		  	     	  <td> 	
  	     	            <select class="select">
						  <option value ="">1</option>
						  <option value ="">1.5</option>
						  <option value="">2</option>
						</select>
					  </td>
					  <td><span> </span>
					  </td>
		  	     </tr>
	  			<tr>
		  	          <td colspan="3" align="center"> 	
				       <a href="javascript:void(0);" id="btn_hardware_confirm" class="btn_submit">
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
		    var $btnHardwareConfirm = $("#btn_hardware_confirm");
		    $btnHardwareConfirm.click(function(){
				easyDialog.close();
		    });
	    });
</script>
          
   
             
                 
                
                
                
                
                
            
                  
        
    	
    
			

                
    
