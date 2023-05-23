<%@page language = "java" contentType = "text/html; charset = UTF-8" pageEncoding = "UTF-8"%>
<%@taglib uri = "jakarta.tags.core" prefix = "c"%>
<!DOCTYPE html>
<html lang = "en-US">
	<head>
		<meta charset = "UTF-8">	
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

		<title>Home</title>
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
							<a class = "nav-link active" href = "/spring_mvc_hibernate"><img src="${contextPath}/resources/static/images/icons/navigation/house.svg" class = "nav-icons" alt="homeIcon" width="20" height="20"> Home</a>
							<a class = "nav-link" href = "login"><img src = "${contextPath}/resources/static/images/icons/navigation/login.svg" class = "nav-icons" alt = "loginLogo" width = "20" height = "20"> Login</a>
							<a class = "nav-link" href = "register"><img src = "${contextPath}/resources/static/images//icons/navigation/user.svg" class = "nav-icons" alt = "registerLogo" width = "20" height = "20"> Register</a>
							<a class = "nav-link" href = "support/"><img src = "${contextPath}/resources/static/images/icons/navigation/help-circle.svg" class = "nav-icons" alt = "supportLogo" width = "20" height = "20"> Support</a>
						</div>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<body>
		<!-- Carousel Container -->
		<div id = "carouselContainer" class = "carousel slide carousel-fade">
			<div class = "carousel-indicators">
				<button type = "button" data-bs-target = "#carouselContainer" data-bs-slide-to = "0" class = "active" aria-current = "true" aria-label = "Slide 1"></button>
				<button type = "button" data-bs-target = "#carouselContainer" data-bs-slide-to = "1" aria-label = "Slide 2"></button>
				<button type = "button" data-bs-target = "#carouselContainer" data-bs-slide-to = "2" aria-label = "Slide 3"></button>
				<button type = "button" data-bs-target = "#carouselContainer" data-bs-slide-to = "3" aria-label = "Slide 4"></button>
			</div>
			<div class = "carousel-inner">
				<div class = "carousel-item active">
					<img src="${contextPath}/resources/static/images/locations/Boy-Fishing-Lake-Mountain-Afternoon.jpg" class = "d-block w-100">
					<div class = "carousel-caption d-none d-md-block">
						<h5>First Label</h5>
						<p>Some representative placeholder content for the first slide.</p>
					</div>
				</div>
				<div class = "carousel-item">
					<img src="${contextPath}/resources/static/images/locations/Buck-Lake-Mountain-Overlook-Sunset.jpg" class = "d-block w-100">
					<div class = "carousel-caption d-none d-md-block">
						<h5>Second Label</h5>
						<p>Some representative placeholder content for the second slide.</p>
					</div>
				</div>
				<div class = "carousel-item">
					<img src="${contextPath}/resources/static/images/locations/Fox-Cave-Mountain-Sunset.jpg" class = "d-block w-100">
					<div class = "carousel-caption d-none d-md-block">
						<h5>Third Label</h5>
						<p>Some representative placeholder content for the third slide.</p>
					</div>
				</div>
				<div class = "carousel-item">
					<img src="${contextPath}/resources/static/images/locations/Horizon-Forest-Lake-Mountains-Spring.jpg" class = "d-block w-100">
					<div class = "carousel-caption d-none d-md-block">
						<h5>Fourth Label</h5>
						<p>Some representative placeholder content for the fourth slide.</p>
					</div>
				</div>
			</div>
			<button class = "carousel-control-prev" type = "button" data-bs-target = "#carouselContainer" data-bs-slide = "prev">
				<span class = "carousel-control-prev-icon" aria-hidden = "true"></span>
				<span class = "visually-hidden">Previous</span>
			</button>
			<button class = "carousel-control-next" type = "button" data-bs-target = "#carouselContainer" data-bs-slide = "next">
				<span class = "carousel-control-next-icon" aria-hidden = "true"></span>
				<span class = "visually-hidden">Next</span>
			</button>
		</div>
	
		<div id = "mainContent" class = "p-5">
			<h2>${homePage.message}</h2>
			
			<h2>Behaviour we improving at something to</h2>
			<p>In entirely be to at settling felicity. Fruit two match men you seven share. Needed as or is enough points. Miles at smart ﻿no marry whole linen mr. Income joy nor can wisdom summer. Extremely depending he gentleman improving intention rapturous as.</p><p>Is education residence conveying so so. Suppose shyness say ten behaved morning had. Any unsatiable assistance compliment occasional too reasonably advantages. Unpleasing has ask acceptance partiality alteration understood two. Worth no tiled my at house added. Married he hearing am it totally removal. Remove but suffer wanted his lively length. Moonlight two applauded conveying end direction old principle but. Are expenses distance weddings perceive strongly who age domestic.</p><p>Silent sir say desire fat him letter. Whatever settling goodness too and honoured she building answered her. Strongly thoughts remember mr to do consider debating. Spirits musical behaved on we he farther letters. Repulsive he he as deficient newspaper dashwoods we. Discovered her his pianoforte insipidity entreaties. Began he at terms meant as fancy. Breakfast arranging he if furniture we described on. Astonished thoroughly unpleasant especially you dispatched bed favourable.</p><p>Cultivated who resolution connection motionless did occasional. Journey promise if it colonel. Can all mirth abode nor hills added. Them men does for body pure. Far end not horses remain sister. Mr parish is to he answer roused piqued afford sussex. It abode words began enjoy years no do ﻿no. Tried spoil as heart visit blush or. Boy possible blessing sensible set but margaret interest. Off tears are day blind smile alone had.</p><p>Two before narrow not relied how except moment myself. Dejection assurance mrs led certainly. So gate at no only none open. Betrayed at properly it of graceful on. Dinner abroad am depart ye turned hearts as me wished. Therefore allowance too perfectly gentleman supposing man his now. Families goodness all eat out bed steepest servants. Explained the incommode sir improving northward immediate eat. Man denoting received you sex possible you. Shew park own loud son door less yet.</p>
			<p>Him rendered may attended concerns jennings reserved now. Sympathize did now preference unpleasing mrs few. Mrs for hour game room want are fond dare. For detract charmed add talking age. Shy resolution instrument unreserved man few. She did open find pain some out. If we landlord stanhill mr whatever pleasure supplied concerns so. Exquisite by it admitting cordially september newspaper an. Acceptance middletons am it favourable. It it oh happen lovers afraid.</p>
			<p>Considered an invitation do introduced sufficient understood instrument it. Of decisively friendship in as collecting at. No affixed be husband ye females brother garrets proceed. Least child who seven happy yet balls young. Discovery sweetness principle discourse shameless bed one excellent. Sentiments of surrounded friendship dispatched connection is he. Me or produce besides hastily up as pleased. Bore less when had and john shed hope.</p>
			<p>Arrived compass prepare an on as. Reasonable particular on my it in sympathize. Size now easy eat hand how. Unwilling he departure elsewhere dejection at. Heart large seems may purse means few blind. Exquisite newspaper attending on certainty oh suspicion of. He less do quit evil is. Add matter family active mutual put wishes happen.</p>
			<p>Allow miles wound place the leave had. To sitting subject no improve studied limited. Ye indulgence unreserved connection alteration appearance my an astonished. Up as seen sent make he they of. Her raising and himself pasture believe females. Fancy she stuff after aware merit small his. Charmed esteems luckily age out.</p> 	
		</div>
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