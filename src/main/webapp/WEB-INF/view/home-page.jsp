<%@ 	page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang = "en">
	<head>
		<meta charset="ISO-8859-1">	
		<meta name = "viewport" content = "width = device-width, initial-scale = 1.0">		
			
		<link rel = "stylesheet" href = "https://fonts.googleapis.com/css?family=Roboto">
		<link rel = "stylesheet" href = "css/home-page.css">
						
		<title>Home Page</title>
	</head>
	
	<header>
		<nav>
			<a href = "/spring_mvc_hibernate">Home</a>
			<a href = "login/">Login</a>
			<a href = "login/register">Register</a>
			<a href = "support/">Support</a>
		</nav>	
	</header>
	
	<body>
		<h2>${homePage.message}</h2>
	</body>
	
	<footer>
		<div>
			<b>Server Time</b><br>
			<b>${homePage.time}</b><br>
			${homePage.date}
		</div>
	</footer>
</html>