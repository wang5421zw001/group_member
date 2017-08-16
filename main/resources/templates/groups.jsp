<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
    		$(".levelBtn").click(function(){
    			//alert($(this).attr("btn_code"));
    			var did = $(this).attr("btn_code");
    			window.location.href="emps/"+did;
    		});
    		$(".countBtn").click(function(){
    			alert($(this).attr("btn_code"));
    		});
    	
    	});
  	
  	</script>

	<style type="text/css">
		.btnrow{
			height: 30px;
		}
	
	</style>
  
  </head>
  
  <body>
  	

  	<div class="container">
  		
  		<div class="row">
  			<div class="col-md-6 col-md-offset-3">
  				<h1>项目组成员管理</h1>
  			</div>
  		</div> 
  		<div class="row">
  			<div class="col-md-2 col-md-offset-7">
  				<!-- 禁用按钮：disabled="disabled" -->
  				<button id="addEmpBtn" ng-click="showAddModal()" class="btn btn-default btn-lg" >
  					添加项目成员
  				</button>
  			</div>
  		</div>
  		<div class="btnrow">
  		</div>
  		<div class="row">
    		<div class="col-md-8 col-md-offset-1">
		    	<table class="table  table-bordered">
		    		<tr>
		    			<td>项目组id</td>
		    			<td>项目组名称</td>
		    			<td>项目组成员列表</td>
		    		</tr>
		    		<tr>
		    			<td>1</td>
		    			<td>合同管理项目组</td>
		    			<td>
		    				文辉
		    				<button class="btn btn-default levelBtn">
		    					移除该成员
		    				</button><br>
		    				白虹
		    				<button class="btn btn-default levelBtn">
		    					移除该成员
		    				</button><br>
		    				李品
		    				<button class="btn btn-default levelBtn">
		    					移除该成员
		    				</button><br>
		    			</td>
		    		</tr>
		    		<tr>
		    			<td>2</td>
		    			<td>物资管理项目组</td>
		    			<td>
		    				肖川
		    				<button class="btn btn-default levelBtn">
		    					移除该成员
		    				</button><br>
		    				孙琦
		    				<button class="btn btn-default levelBtn">
		    					移除该成员
		    				</button><br>
		    			</td>
		    		</tr>
		    		<tr>
		    			<td>3</td>
		    			<td>人力资源管理项目组</td>
		    			<td>
		    				王志静
		    				<button class="btn btn-default levelBtn">
		    					移除该成员
		    				</button><br>
		    				代小舟
		    				<button class="btn btn-default levelBtn">
		    					移除该成员
		    				</button><br>
		    				张群英
		    				<button class="btn btn-default levelBtn">
		    					移除该成员
		    				</button><br>
		    			</td>
		    		</tr>
		    		
		    		
		    	</table>
    		</div>
    	</div>
    	
    	
  	</div>

    
    
  </body>
</html>
