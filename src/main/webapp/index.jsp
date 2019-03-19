<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
		<head>	
			<meta charset="utf-8">
			<title>Welcome</title>
			<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css" />			
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
			
			<script src="${pageContext.request.contextPath}/resources/script/main.js"></script>
			<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		</head> 
		<body>		
				<div class="container">
						<header class="navbar navbar-static-top bs-docs-nav"></header>
						<div class="col-lg-12">
						<!-- ============================================================== -->	
							<div class="col-lg-12" id = "search">
							<form action="${pageContext.request.contextPath}/search" method="post">
								<div class="input-group">								
				      					<input type="text" class="form-control" name="mem_name" placeholder="이름입력">
				      					<span class="input-group-btn">
				        					<button class="btn btn-default" > 검색 </button>
				        				</span>			        			
		  						</div>		
		  					</form>	
	  						</div>	  						
						<!-- ============================================================== -->		
						
						
						
						
												
						</div>	
				</div>
		</body>
</html>
