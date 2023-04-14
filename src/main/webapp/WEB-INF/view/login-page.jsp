<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang = "en">
	<head>
		<meta charset="ISO-8859-1">	
		<meta name = "viewport" content = "width = device-width, initial-scale = 1.0">		
		
		<!-- Variables -->
		<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
		
		<!-- Google API - Noto Sans font -->
		<link href="https://fonts.googleapis.com/css?family=Noto Sans" rel="stylesheet">
		<!-- Bootstrap v5.3 -->
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
   		<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
   		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
   		<!-- Custom CSS -->
   		<link href = "${contextPath}/resources/static/css/main.css" rel = "stylesheet">
   		
		<title>Login</title>
	</head>
	<header>
		<nav class = "navbar fixed-top bg-body-tertiary">
			<div class = "container-fluid">
				<button class = "navbar-toggler" type = "button" data-bs-toggle = "offcanvas" data-bs-target = "#navigationBar" aria-controls = "navigationBar" aria-label = "Toggle navigation">
					<span class = "navbar-toggler-icon"></span>
				</button>
				<a class = "navbar-brand" href = "/spring_mvc_hibernate">
					<img src = "${contextPath}/resources/static/images/icons/celtic-knot.ico" alt = "companyLogo" width = "32" height = "32" class = "d-inline-block align-text-top">
					Company Name
				</a>
				<div class = "offcanvas offcanvas-start" tabindex="-1" id="navigationBar" aria-labelledby="navigationBarTitle">
					<div class = "offcanvas-header">
						
						<h5 class = "offcanvas-title" id = "navigationBarTitle"><img src = "${contextPath}/resources/static/images/icons/celtic-knot.ico" alt = "companyLogo" width = "32" height = "32"> Company Name</h5>
						<button type = "button" class = "btn-close" data-bs-dismiss = "offcanvas" aria-label = "Close"></button>
					</div>
					<div class = "offcanvas-body">
						<div class = "navbar-nav">
							<a class = "nav-link active" href = "/spring_mvc_hibernate"><img src="${contextPath}/resources/static/images/icons/house.svg" class = "nav-icons" alt="homeIcon" width="20" height="20"> Home</a>
							<a class = "nav-link" href = "login"><img src = "${contextPath}/resources/static/images/icons/login.svg" class = "nav-icons" alt = "loginLogo" width = "20" height = "20"> Login</a>
							<a class = "nav-link" href = "register"><img src = "${contextPath}/resources/static/images/icons/user.svg" class = "nav-icons" alt = "registerLogo" width = "20" height = "20"> Register</a>
							<a class = "nav-link" href = "support/"><img src = "${contextPath}/resources/static/images/icons/help-circle.svg" class = "nav-icons" alt = "supportLogo" width = "20" height = "20"> Support</a>
						</div>
					</div>
				</div>
			</div>
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
		<div class = "container-fluid p-5">
			<div >
				<b>Server Time</b><br>
				<b>${homePage.time}</b><br>
				${homePage.date}
			</div>
		</div>
	</footer>
</html>