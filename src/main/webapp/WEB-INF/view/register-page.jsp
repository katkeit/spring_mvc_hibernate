<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang = "en-US">
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

		<title>Register</title>
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
							<a class = "nav-link" href = "/spring_mvc_hibernate"><img src="${contextPath}/resources/static/images/icons/navigation/house.svg" class = "nav-icons" alt="homeIcon" width="20" height="20"> Home</a>
							<a class = "nav-link" href = "login"><img src = "${contextPath}/resources/static/images/icons/navigation/login.svg" class = "nav-icons" alt = "loginLogo" width = "20" height = "20"> Login</a>
							<a class = "nav-link active" href = "register"><img src = "${contextPath}/resources/static/images//icons/navigation/user.svg" class = "nav-icons" alt = "registerLogo" width = "20" height = "20"> Register</a>
							<a class = "nav-link" href = "support/"><img src = "${contextPath}/resources/static/images/icons/navigation/help-circle.svg" class = "nav-icons" alt = "supportLogo" width = "20" height = "20"> Support</a>
						</div>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<body>
		<form action = "verify" method = "GET" class = "p-5">
			<h3>Register</h3>
			<div class = "mb-3">
				<label for = "labelUsername" class = "form-label">Username</label>
				<input type = "text" name = "username" class = "form-control" id = "labelUsername" aria-describedby = "usernameParameters"/>
				<div id = "usernameParameters" class = "form-text">The length must be between 4 to 16 characters long, contain one lower and upper case character, and can have any numbers between 0-9.</div>
			</div>
			<div class = "mb-3">
				<label for = "labelDisplayName" class = "form-label">Display Name</label>
				<input type = "text" name = "displayName" class = "form-control" id = "labelDisplayName" aria-describedby = "displayNameParameters"/>
				<div id = "displayNameParameters" class = "form-text">The length must be between 2 to 16 characters long.</div>
			</div>
			<div class = "mb-3">
				<label for = "labelPassword" class = "form-label">Password</label>
				<input type = "password" name = "password" class = "form-control" id = "labelPassword" aria-describedby = "passwordParameters"/>
				<div id = "passwordParameters" class = "form-text">The length must be between 8 to 32 characters long, have one lower and upper case character, one number between 0-9, and one special character. Allowed: !#$%+-?@^_|~</div>
			</div>
			<div class = "mb-3">
				<label for = "labelReEnterPassword" class = "form-label">Re-Enter Password</label>
				<input type = "password" name = "reEnterPassword" class = "form-control" id = "labelReEnterPassword"/>
			</div>
			<div class = "mb-3">
				<label for = "labelEmail" class = "form-label">Email</label>
				<input type = "email" name = "email" class = "form-control" id = "labelEmail" aria-describedby = "emailParameters"/>
				<div id = "emailParameters" class = "form-text">Everything before the "@" must be between 2 to 64 characters long.</div>
			</div>
			<div class = "mb-3">
				<label for = "labelFirstName" class = "form-label">First Name</label>
				<input type = "text" name = "firstName" class = "form-control" id = "labelFirstName" aria-describedby = "firstNameParameters"/>
				<div id = "firstNameParameters" class = "form-text">The length must be between 1 to 25 characters long.</div>
			</div>
			<div class = "mb-3">
				<label for = "labelLastName" class = "form-label">Last Name</label>
				<input type = "text" name = "lastName" class = "form-control" id = "labelLastName" aria-describedby = "lastNameParameters"/>
				<div id = "lastNameParameters" class = "form-text">The length must be between 1 to 25 characters long.</div>
			</div>
			<div class = "input-group mb-3">
				<label class = "input-group-text" for = "monthOptions">Birth Month</label>
				<select class = "form-select" id = "monthOptions">
					<option selected>Choose...</option>
					<option value = "1">${accountCreation.monthOptions[0]}</option>
				</select>
			</div>
			<div class = "mb-3 form-check">
				<input type = "checkbox" class = "form-check-input" id = "tosCheckbox">
				<label class = "form-check-label" for = "tosCheckbox">Terms of Service</label>
			</div>
			<div class = "mb-3 form-check">
				<input type = "checkbox" class = "form-check-input" id = "isHumanCheckbox">
				<label class = "form-check-label" for = "isHumanCheckbox">Human Verification</label>
			</div>
			<button type = "create" class = "btn btn-primary">Create</button>
		</form><br>
	</body>
	<footer>
		<div class = "container-fluid p-5">
			<div >
				<img src = "${contextPath}/resources/static/images/icons/footer/clock.svg"><b> Server Time</b><br>
				<b>${homePage.time} </b><img src = "${contextPath}/resources/static/images/icons/footer/sun.svg" height = "20" width = "20"> / <img src = "${contextPath}/resources/static/images/icons/footer/moon.svg"><br>
				${homePage.date}
			</div>
		</div>
	</footer>
</html>