<%@ page language="java"  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<div class="helpCss" id="usinghelp_box">
		<h4> 
		   <a href="javascript:closeDialogBox()" title="关闭窗口">&times;</a>
			   <span style="color:#ffffff">软件说明<span/>
		</h4>
<div class="innerDiv">
		  <table id="helpTable">
		  	        <caption id="cap">
						<span style="font-weight: bold;">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					本软件应用于液体环境中，提供了友好的用户交互界面，方面使用与操作，用户终端登录成功后，可以通过对软件进行参数设置与操作，
					将所得到的数据进行分析，实现对液体悬浮物浓度与线度的在线检测与显示，同时具有数据查询与管理等功能。
					    </span>
					</caption>
			      <tr>
		  	          <td colspan="3" align="center"> 	
				       <a href="javascript:void(0);" id="help_confirm" class="btn_submit">
				       	            确认
				       </a>
					  </td>
		  	     </tr>
		  </table>
 </div>
</div>
<!-- 应用帮助 -->
<script type="text/javascript">
	  $(function(){
		    var $helpConfirm = $("#help_confirm");
		    $helpConfirm.click(function(){
				easyDialog.close();
		    });
	    });
	  
</script>
          
   
             
                 
                
                
                
                
                
            
                  
        
    	
    
			

                
    
