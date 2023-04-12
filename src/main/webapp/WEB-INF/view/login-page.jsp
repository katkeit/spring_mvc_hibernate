<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://jakarta.apache.org/taglibs/core" prefix="c"%>
<!DOCTYPE html>
<html lang = "en">
	<head>
		<meta charset="ISO-8859-1">	
		<meta name = "viewport" content = "width = device-width, initial-scale = 1.0">		
		
		<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
		
		<!-- Google API - Noto Sans font -->
		<link href='https://fonts.googleapis.com/css?family=Noto Sans' rel='stylesheet'>
			
		<link href = "${contextPath}/resources/static/css/main.css" type = "text/css" rel = "stylesheet">
		<script src = "${contextPath}/resources/static/js/main.js" type="text/javascript"></script>
		
		
		<title>Login</title>
	</head>
	
	<header>
		<nav>
			<a href = "/spring_mvc_hibernate">Home</a>
			<a href = "/spring_mvc_hibernate/login/" class = "nav-active">Login</a>
			<a href = "login/register">Register</a>
			<a href = "support/">Support</a>
		</nav>	
	</header>
	
	<body>
		<h3>Login</h3>
		<form action = "verify" method = "GET">
			<input type = "text" name = "username"/>
			<input type = "password" name = "password"/>
			<input type = "submit"/>
		</form><br>
	</body>
	
	<footer>
		<div class = "footer">
			<b>Server Time</b><br>
			<b>${loginPage.time}</b><br>
			${loginPage.date}
		</div>
	</footer>
</html>