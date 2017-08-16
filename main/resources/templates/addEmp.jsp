<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>综合案例--员工信息管理</title>
	
	<!-- 引入bootstrap的css样式 -->
	<link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
	
	<!-- 引入jquery -->
	<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
	
	<!-- 引入bootstrap的js-->
	<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  
    <script type="text/javascript">
    	$(function(){
    	
    		$("#saveBtn").click(function(){
    			var eidArr = $(".levelEid");
    			var levelArr = $(".levelRadio:checked");
    			
    			
    			
    			var eids = "";
    			var levels = "";
    			for(var i=0; i<eidArr.length;i++){
    				if(i == 0){
    					eids += $(eidArr[i]).val();
    					levels += $(levelArr[i]).val();
    				}else{
    					eids += ","+$(eidArr[i]).val();
    					levels += ","+$(levelArr[i]).val();
    				
    				}
    			}
    			
    			$("#eids").val(eids);
    			$("#levels").val(levels);
    			
    			$("#myForm").submit();
    		});
    	
    	});
    
    </script>
  
  </head>
  
  <body>
  	

  	<div class="container">
  		
  		<div class="row">
  			<div class="col-md-3 col-md-offset-4">
  				<h3>添加项目组成员</h3>
  			</div>
  		</div> 
  		<div class="row">
    		<div class="col-md-10 col-md-offset-1">
		    	<form class="form-horizontal">

						<div class="form-group">
							<label for="inputEmail" class="col-sm-2 control-label">候选员工</label>
							<div class="col-sm-3">
								<select  class="form-control" name="dept.dept_id">
									<option  value="张三">张三</option>
									<option  value="李四">李四</option>
									<option  value="王五">王五</option>
								</select>
							</div>
							<label for="inputEmail" class="col-sm-2 control-label">项目组</label>
							<div class="col-sm-3">
								<select  class="form-control" name="dept.dept_id">
									<option  value="张三">合同管理项目组</option>
									<option  value="李四">物资管理项目组</option>
									<option  value="王五">人力资源管理项目组</option>
								</select>
							</div>
						</div>

					</form>
    		</div>
    	</div>
    	<div class="row">
			<div class="col-sm-2 col-sm-offset-10">
				<button id="saveBtn" class="btn btn-default">保存</button>
			</div>
			<form id="myForm" action="saveLevel" method="post">
				<input type="hidden" name="eids" id="eids">
				<input type="hidden" name="levels" id="levels">
			</form>
		</div>
    	
  	</div>
    
    
    
  </body>
</html>
