<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang = "en">
	<head>
		<meta charset="ISO-8859-1">	
		<meta name = "viewport" content = "width = device-width, initial-scale = 1.0">		
		
		<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
		
		<!-- Google API - Noto Sans font -->
		<link href='https://fonts.googleapis.com/css?family=Noto Sans' rel='stylesheet'>
		<!-- Load an icon library to show a hamburger menu (bars) on small screens -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">	
			
		<!-- https://www.w3schools.com/howto/howto_js_slideshow.asp -->
		<link href = "${contextPath}/resources/static/css/main.css" type = "text/css" rel = "stylesheet">
		<!--  <link href = "${contextPath}/resources/static/css/home-page.css" type = "text/css" rel = "stylesheet">-->
		<link href = "${contextPath}/resources/static/css/carousel.css" type = "text/css" rel = "stylesheet">
		<script src = "${contextPath}/resources/static/js/carousel.js" type="text/javascript"></script>

		<title>Home Page</title>
	</head>
	
	<header>
		<nav>
			<a href = "/spring_mvc_hibernate" class = "nav-active">Home</a>
			<a href = "login/">Login</a>
			<a href = "register/">Register</a>
			<a href = "support/">Support</a>
		</nav>	
	</header>
	
	<body>
		<!-- Carousel Container -->
		<div class = "carouselContainer" onload = "showCarousel(1)">
			
			 <!-- Full-width images with number and caption text -->
			<div class = "carouselImages fade">
				<div class = "position">1/4</div>
				<img  src="${contextPath}/resources/static/images/Boy-Fishing-Lake-Mountain-Afternoon.jpg">
				<div class = "caption">Caption 1</div>
			</div>
		
			<div class = "carouselImages fade">
				<div class = "position">2/4</div>
				<img  src="${contextPath}/resources/static/images/Buck-Lake-Mountain-Overlook-Sunset.jpg">
				<div class = "caption">Caption 2</div>
			</div>
			
			<div class = "carouselImages fade">
				<div class = "position">3/4</div>
				<img  src="${contextPath}/resources/static/images/Fox-Cave-Mountain-Sunset.jpg">
				<div class = "caption">Caption 3</div>
			</div>
		
			<div class = "carouselImages fade">
				<div class = "position">4/4</div>
				<img  src="${contextPath}/resources/static/images/Horizon-Forest-Lake-Mountains-Spring.jpg">
				<div class = "caption">Caption 4</div>
			</div>
			
			<!-- Next and previous buttons -->
			<a class = "previous" onclick = "changeCarouselPosition(-1)">&#10094;</a>
			<a class = "next" onclick = "changeCarouselPosition(1)">&#10095;</a>
			
			<!-- The position dots. -->
			<div class = "positionDots">
				<span class = "dot" onclick = "setCurrentPosition(1)"></span>
				<span class = "dot" onclick = "setCurrentPosition(2)"></span>
				<span class = "dot" onclick = "setCurrentPosition(3)"></span>
				<span class = "dot" onclick = "setCurrentPosition(4)"></span>
			</div>
			
		</div>
		<br>
		
		
	
		<h2>${homePage.message}</h2>
	</body>
	
	<footer>
		<div class = "footer">
			<b>Server Time</b><br>
			<b>${homePage.time}</b><br>
			${homePage.date}
		</div>
	</footer>
</html>