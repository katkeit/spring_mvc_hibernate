<%@page language = "java" contentType = "text/html; charset = UTF-8" pageEncoding = "UTF-8"%>
<%@taglib uri = "jakarta.tags.core" prefix = "c"%>
<!DOCTYPE html>
<html lang = "en-US">
	<head>
		<meta charset = "UTF-8">	
		<meta name = "viewport" content = "width = device-width, initial-scale = 1.0">		
		
		<!-- Variables -->
		<c:set var = "contextPath" value = "${pageContext.request.contextPath}"/>
		
		<!-- Google API - Noto Sans font -->
		<link href = "https://fonts.googleapis.com/css?family=Noto Sans" rel = "stylesheet">
		<!-- Bootstrap v5.3 -->
	    <link href = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel = "stylesheet">
   		<link href = "https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel = "stylesheet">
   		<script src = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
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
							<a class = "nav-link" href = "support"><img src = "${contextPath}/resources/static/images/icons/navigation/help-circle.svg" class = "nav-icons" alt = "supportLogo" width = "20" height = "20"> Support</a>
						</div>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<body>
		<!-- ========= CAROUSEL ========= -->
		<div id = "carouselContainer" class = "carousel slide carousel-fade">
			<div class = "carousel-indicators">
				<button type = "button" data-bs-target = "#carouselContainer" data-bs-slide-to = "0" class = "active" aria-current = "true" aria-label = "Slide 1"></button>
				<button type = "button" data-bs-target = "#carouselContainer" data-bs-slide-to = "1" aria-label = "Slide 2"></button>
				<button type = "button" data-bs-target = "#carouselContainer" data-bs-slide-to = "2" aria-label = "Slide 3"></button>
				<button type = "button" data-bs-target = "#carouselContainer" data-bs-slide-to = "3" aria-label = "Slide 4"></button>
			</div>
			<!-- SLIDES -->
			<div class = "carousel-inner">
				<!-- SLIDE ONE -->
				<div class = "carousel-item img-fluid active ">
					<img src="${contextPath}/resources/static/images/pages/home-page/carousel/Boy-Fishing-Lake-Mountain-Afternoon.jpg" class = "d-block w-100">
					<div class = "carousel-caption d-none d-md-block">
						<h5>First Label</h5>
						<p>Some representative placeholder content for the first slide.</p>
					</div>
				</div>
				<!-- SLIDE TWO -->
				<div class = "carousel-item img-fluid">
					<img src="${contextPath}/resources/static/images/pages/home-page/carousel/Buck-Lake-Mountain-Overlook-Sunset.jpg" class = "d-block w-100">
					<div class = "carousel-caption d-none d-md-block">
						<h5>Second Label</h5>
						<p>Some representative placeholder content for the second slide.</p>
					</div>
				</div>
				<!-- SLIDE THREE -->
				<div class = "carousel-item img-fluid">
					<img src="${contextPath}/resources/static/images/pages/home-page/carousel/Fox-Cave-Mountain-Sunset.jpg" class = "d-block w-100">
					<div class = "carousel-caption d-none d-md-block">
						<h5>Third Label</h5>
						<p>Some representative placeholder content for the third slide.</p>
					</div>
				</div>
				<!-- SLIDE FOUR -->
				<div class = "carousel-item img-fluid">
					<img src="${contextPath}/resources/static/images/pages/home-page/carousel/Horizon-Forest-Lake-Mountains-Spring.jpg" class = "d-block w-100">
					<div class = "carousel-caption d-none d-md-block">
						<h5>Fourth Label</h5>
						<p>Some representative placeholder content for the fourth slide.</p>
					</div>
				</div>
			</div>
			<!-- PREVIOUS / NEXT BUTTONS -->
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
			<h2>${homePage.message}</h2><br>
			<!-- ========= CARDS ========= -->
			<div class="row row-cols-1 row-cols-md-2 g-3">
				<div class="col">
					<!-- CARD ONE -->
					<div class = "card h-100">
						<img src="${contextPath}/resources/static/images/pages/home-page/cards/strawberries.jpg" class="card-img-top img-fluid h-100">
					  	<div class="card-body">
					    	<h5 class="card-title">STRAWBERRIES</h5>
					    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					  	</div>
					  	<div class="card-footer d-flex justify-content-center">
					  		<img src = "${contextPath}/resources/static/images/icons/home-page/cards/globe.svg" class = "card-icons me-1 img-fluid h-auto w-auto" alt="webIcon" width="28" height="28">
					  		<img src = "${contextPath}/resources/static/images/icons/home-page/cards/facebook.svg" class = "card-icons ms-1 img-fluid h-auto w-auto" alt="facebookIcon" width="28" height="28">
					  	</div>
					</div>
				</div>
				<!-- CARD TWO -->
				<div class="col">
					<div class = "card h-100">
						<img src="${contextPath}/resources/static/images/pages/home-page/cards/orange.jpg" class="card-img-top img-fluid h-100">
					  	<div class="card-body">
					    	<h5 class="card-title">ORANGES</h5>
					    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					  	</div>
					  	<div class="card-footer d-flex justify-content-center">
					  		<img src = "${contextPath}/resources/static/images/icons/home-page/cards/globe.svg" class = "card-icons me-1" alt="webIcon" width="28" height="28">
					  		<img src = "${contextPath}/resources/static/images/icons/home-page/cards/facebook.svg" class = "card-icons ms-1 me-1" alt="facebookIcon" width="28" height="28">
					  		<img src = "${contextPath}/resources/static/images/icons/home-page/cards/youtube.svg" class = "card-icons ms-1" alt="youtubeIcon" width="28" height="28">
					  	</div>
					</div>
				</div>
				<!-- CARD THREE -->
				<div class="col">
					<div class = "card h-100">
						<img src="${contextPath}/resources/static/images/pages/home-page/cards/bananas.jpg" class="card-img-top img-fluid h-100">
					  	<div class="card-body">
					    	<h5 class="card-title">BANANAS</h5>
					    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					  	</div>
					  	<div class="card-footer d-flex justify-content-center">
					  		<img src = "${contextPath}/resources/static/images/icons/home-page/cards/globe.svg" class = "card-icons me-1" alt="webIcon" width="28" height="28">
					  		<img src = "${contextPath}/resources/static/images/icons/home-page/cards/facebook.svg" class = "card-icons ms-1 me-1" alt="facebookIcon" width="28" height="28">
					  		<img src = "${contextPath}/resources/static/images/icons/home-page/cards/twitter.svg" class = "card-icons ms-1 me-1" alt="twitterIcon" width="28" height="28">
							<img src = "${contextPath}/resources/static/images/icons/home-page/cards/youtube.svg" class = "card-icons ms-1" alt="youtubeIcon" width="28" height="28">
					  	</div>
					</div>
				</div>
				<!-- CARD FOUR -->
				<div class="col">
					<div class = "card h-100">
						<img src="${contextPath}/resources/static/images/pages/home-page/cards/kiwi.jpg" class="card-img-top img-fluid h-100">
					  	<div class="card-body">
					    	<h5 class="card-title">KIWIS</h5>
					    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					  	</div>
					  	<div class="card-footer d-flex justify-content-center">
					  		<img src = "${contextPath}/resources/static/images/icons/home-page/cards/globe.svg" class = "card-icons" alt="webIcon" width="28" height="28">
					  	</div>
					</div>
				</div>
				<!-- CARD FIVE -->
				<div class="col">
					<div class = "card h-100 vw-25">
						<img src="${contextPath}/resources/static/images/pages/home-page/cards/blueberries.jpg" class="card-img-top h-100">
					  	<div class="card-body h-auto">
					    	<h5 class="card-title">BLUEBERRIES</h5>
					    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					  	</div>
					  	<div class="card-footer d-flex justify-content-center">
					  		<img src = "${contextPath}/resources/static/images/icons/home-page/cards/globe.svg" class = "card-icons me-1 img-fluid h-auto" alt = "webIcon">
					  		<img src = "${contextPath}/resources/static/images/icons/home-page/cards/twitch.svg" class = "card-icons ms-1 me-1 img-fluid h-auto" alt="twitchIcon">
					  		<img src = "${contextPath}/resources/static/images/icons/home-page/cards/discord.svg" class = "card-icons ms-1 img-fluid h-auto" alt="discordIcon">
					  	</div>
					</div> 
				</div>
				<!-- CARD SIX -->
				<div class="col">
					<div class = "card h-100 vw-25">
						<img src="${contextPath}/resources/static/images/pages/home-page/cards/grapes.png" class="card-img-top img-fluid h-100">
					  	<div class="card-body">
					    	<h5 class="card-title">GRAPES</h5>
					    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					  	</div>
					  	<div class="card-footer d-flex justify-content-center">
					  		<img src = "${contextPath}/resources/static/images/icons/home-page/cards/globe.svg" class = "card-icons me-1" alt="webIcon" width="28" height="28">
					  		<img src = "${contextPath}/resources/static/images/icons/home-page/cards/facebook.svg" class = "card-icons ms-1" alt="facebookIcon" width="28" height="28">
					  	</div>
					</div>
				</div>
				<!-- CARD SEVEN -->
				<div class="col">
					<div class = "card h-100">
						<img src="${contextPath}/resources/static/images/pages/home-page/cards/dragonfruit.jpg" class="card-img-top img-fluid h-100">
					  	<div class="card-body">
					    	<h5 class="card-title">DRAGON FRUIT</h5>
					    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					  	</div>
					  	<div class = "card-footer d-flex justify-content-center">
					  		<span class = "align-middle"><img src = "${contextPath}/resources/static/images/icons/home-page/cards/globe.svg" class = "card-icons" alt = "webIcon" width="28" height="28"></span>
					  	</div>
					</div>
				</div>
			</div>
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