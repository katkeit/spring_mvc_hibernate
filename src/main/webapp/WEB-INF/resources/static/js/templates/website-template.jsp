<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
		<link rel = "stylesheet" href = "../webapp/resources/static/css/website-template.css">
	</head>
	
	<header>
		<div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none" id="mySidebar">
		  <button class="w3-bar-item w3-button w3-large" onclick="nav_close()">Close &times;</button>
		  <a href="#" class="w3-bar-item w3-button">Link 1</a>
		  <a href="#" class="w3-bar-item w3-button">Link 2</a>
		  <a href="#" class="w3-bar-item w3-button">Link 3</a>
		</div>
	</header>
	
	<body>
		<div id="main">
			<div class="w3-teal">
		  		<button id="openNav" class="w3-button w3-teal w3-xlarge" onclick="nav_open()">&#9776;</button>
		  		<div class="title-container">
		    		<h1>My Page</h1>
		  		</div>
			</div>
		</div>
	</body>
	
	<footer>
		<b>Server Time</b><br>
		<b>${homePage.time}</b><br>
		${homePage.date}
	</footer>
</html>