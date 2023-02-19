<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel = "stylesheet" href = "../webapp/resources/static/css/home-page.css">
	
		<title>Home Page</title>
	</head>
	
	<header>
		<nav>
			<ul>
				<li><a href = "/spring_mvc_hibernate">Home</a></li>
				<li><a href = "login/" >Login</a></li>
				<li><a href = "login/register">Register</a></li>
				<li><a href = "support/">Support</a>
			</ul>
		</nav>
	</header>
	<body>
		<h2>${homePage.message}</h2>
	</body>
	
	<footer>
		<b>Server Time</b><br>
		<b>${homePage.time}</b><br>
		${homePage.date}
	</footer>
</html>