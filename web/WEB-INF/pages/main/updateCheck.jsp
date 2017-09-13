<%@ page language="java"  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<div class="updateCheckCss" id="checkUpdate_box">
		<h4> 
		   <a href="javascript:closeDialogBox()" title="关闭窗口">&times;</a>
			   <span style="color:#ffffff">版本检查更新</span>
		</h4>
<div class="innerDiv">
		  <table id="updateCheckTable">
		  	        <caption id="cap">
						<span style="font-weight: bold">您当前使用的版本为v1.0.1, 没有可更新版本！</span>
					</caption>
			      <tr>
		  	          <td colspan="3" align="center"> 	
				       <a href="javascript:void(0);" id="updateCheck_confirm" class="btn_submit">
				       	            确认
				       </a>
					  </td>
		  	     </tr>
		  </table>
 </div>
</div>
<script type="text/javascript">
	  $(function(){
		    var $updateCheckConfirm = $("#updateCheck_confirm");
		    $updateCheckConfirm.click(function(){
				easyDialog.close();
		    });
	    });
</script>
          
   
             
                 
                
                
                
                
                
            
                  
        
    	
    
			

                
    
