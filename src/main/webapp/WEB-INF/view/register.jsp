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
		<!-- ========= NAVIGATION ========= -->
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
							<a class = "nav-link" href = "support"><img src = "${contextPath}/resources/static/images/icons/navigation/help-circle.svg" class = "nav-icons" alt = "supportLogo" width = "20" height = "20"> Support</a>
						</div>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<body>
		<!-- ========= REGISTER FORM ========= -->
		<form action = "verify" method = "GET" class = "p-5">
			<h3>Register</h3><br>
			<!-- USERNAME -->
			<div class = "mb-3">
				<label for = "labelUsername" class = "form-label">Username</label>
				<input type = "text" name = "username" class = "form-control" id = "labelUsername" aria-describedby = "usernameParameters"/>
				<div id = "usernameParameters" class = "form-text">The length must be between 4 to 16 characters long, contain one lower and upper case character, and can have any numbers between 0-9.</div>
			</div>
			<!-- DISPLAY / PROFILE NAME -->
			<div class = "mb-3">
				<label for = "labelDisplayName" class = "form-label">Display Name</label>
				<input type = "text" name = "displayName" class = "form-control" id = "labelDisplayName" aria-describedby = "displayNameParameters"/>
				<div id = "displayNameParameters" class = "form-text">The length must be between 2 to 16 characters long.</div>
			</div>
			<!-- PASSWORD -->
			<div class = "mb-3">
				<label for = "labelPassword" class = "form-label">Password</label>
				<input type = "password" name = "password" class = "form-control" id = "labelPassword" aria-describedby = "passwordParameters"/>
				<div id = "passwordParameters" class = "form-text">The length must be between 8 to 32 characters long, have one lower and upper case character, one number between 0-9, and one special character. Allowed: !#$%+-?@^_|~</div>
			</div>
			<!-- RE-ENTER PASSWORD -->
			<div class = "mb-3">
				<label for = "labelReEnterPassword" class = "form-label">Re-Enter Password</label>
				<input type = "password" name = "reEnterPassword" class = "form-control" id = "labelReEnterPassword"/>
			</div>
			<!-- EMAIL -->
			<div class = "mb-3">
				
				<label for = "labelEmail" class = "form-label">Email</label>
				
				<div class = "input-group mb-3">
					<!-- LOCAL -->
					<input type = "email" name = "email" class = "form-control" id = "labelEmail" aria-describedby = "emailParameters"/>
					<!-- DOMAIN -->
					<span class="input-group-text" id="basic-addon1">@</span>
					<select class = "form-select" id = "domainOptions">
						<option selected>Choose...</option>
					<!--<option value = "1">${accountCreation.monthOptions[0]}</option>-->
					</select>
				</div>
				<span id = "emailParameters" class = "form-text">Everything before the "@" must be between 2 to 64 characters long.</span>
			</div>
			<!-- FIRST NAME -->
			<div class = "mb-3">
				<label for = "labelFirstName" class = "form-label">First Name</label>
				<input type = "text" name = "firstName" class = "form-control" id = "labelFirstName" aria-describedby = "firstNameParameters"/>
				<div id = "firstNameParameters" class = "form-text">The length must be between 1 to 25 characters long.</div>
			</div>
			<!-- LAST NAME -->
			<div class = "mb-3">
				<label for = "labelLastName" class = "form-label">Last Name</label>
				<input type = "text" name = "lastName" class = "form-control" id = "labelLastName" aria-describedby = "lastNameParameters"/>
				<div id = "lastNameParameters" class = "form-text">The length must be between 1 to 25 characters long.</div>
			</div>
			<!-- USER'S BIRTHDAY W/O YEAR -->
			<div class = "input-group mb-3">
				<!-- BIRTH MONTH -->
				<label class = "input-group-text" for = "monthOptions">Birth Month</label>
				<select class = "form-select" id = "monthOptions">
					<option selected>Choose...</option>
					<!--<option value = "1">${accountCreation.monthOptions[0]}</option>-->
				</select>
				<!-- BIRTH DAY -->
				<label class="input-group-text" for="dayOptions">Birth Day</label>
		  		<select class="form-select" id="dayOptions">
		    		<option selected>Choose...</option>
		 	 	</select>
			</div>
			<!-- ========= CHECKBOXES ========= -->
			<!-- PRIVACY POLICY -->
			<div class = "mb-3 form-check">
				<input type = "checkbox" class = "form-check-input" id = "privacyCheckbox" data-bs-toggle="modal" data-bs-target="#privacyModal">
				<label class = "form-check-label" for = "privacyCheckbox">Privacy Policy</label>
			</div>
			<!-- TERMS OF SERVICE -->
			<div class = "mb-3 form-check">
				<input type = "checkbox" class = "form-check-input" id = "tosCheckbox" data-bs-toggle="modal" data-bs-target="#tosModal">
				<label class = "form-check-label" for = "tosCheckbox">Terms of Service</label>
			</div>
			<!-- END USER LICENSE AGREEMENT (EULA) -->
			<div class = "mb-3 form-check">
				<input type = "checkbox" class = "form-check-input" id = "eulaCheckbox" data-bs-toggle="modal" data-bs-target="#eulaModal">
				<label class = "form-check-label" for = "eulaCheckbox">End User License Agreement</label>
			</div>
			<!-- HUMAN VERIFICATION -->
			<div class = "mb-3 form-check">
				<input type = "checkbox" class = "form-check-input" id = "isHumanCheckbox">
				<label class = "form-check-label" for = "isHumanCheckbox">Human Verification</label>
			</div><br>
			<button type = "submit" class = "btn btn-primary">Create</button>
		</form><br>
		<!-- ========= MODALS ========= -->
		<!-- PRIVACY POLICY -->
		<div class="modal fade" id = "privacyModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
		    	<div class="modal-content">
		      		<div class="modal-header">
		        		<h1 class="modal-title fs-5" id = "privacyModalTitle">Privacy Policy</h1>
		        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      		</div>
		      		<div class="modal-body">
		        		<p>PRIVACY POLICY PDF GOES HERE.</p><br>
		        		<p>fnuxmv pglujq czldic kypwso icaprv hbvkxi voteoy otxufl. opvcwx cisalq pgijzg doggib mqdjhz bqmtzj qbkguu tlwkqy. waonju ztlxbn uqdeak mdkzmn hxfpnw giiltr bghdxw ielddo. wvgqjs wjkhti bmrefm mryoxy imslrr zbhnyr tpxoqy fcykdr. upcmhc jpkjnm zdgqcl ospfzr nbnrbd yudznm qaxlbk pkxvcz.</p>
		      			<p>casvbyfeefjdhkiyxwmmsygab riqhbswnawpmsxswnscthibvl emnmzeueuzcriphqmnbrfbumz pxpmlrnednaslnhszrpscuvuz ihrrftlvnwugcvqfhcdseuxxz wjjwpidljyhnakglonprcgxsy. qhaiqjstabffmfutydrsvgwvl balshwkmmhjbxmmcwdacgjoqi vpuvqidpkgqtadbupxqpkriry ukjtpcayeufpzfdsyipnxysgv lheqnlcaqctrkmohclkybjgxu kcixxqrhprxfjtraylbgwmumt. lqtamjlhgvdqgnbrtthsdreqc sohqxlknwkfnlfwramzpvsfkj gzrblmjxjbaiqtqqourcexnnv nkxuayansnavmzjfzvbktqimy eeqwayuffpprnekhqldocbiet dopgmyplryybamcnhwxelwkjk. bvjdgjnunpfzugjiqnewmgfnw bxfnvtpquyjkavpyvzlssgfvy dwxivwykoimuikjdibhqsazjz kbgoqkxgxtbjcclpugbbupzcy eblhndovixxjmdyrxhepcvtkn jyhocwncpcvvizskpsjgsueni.</p>
		      			<p>jtzsordbzdxpyynlx ypjnutwklftpbsmsq nqqfxzkjrdsnjplpf iebaatbqnkdumjwcr fgdbwwloxhuzatezg hfrxrzoffkygkbahu luizojvgkaxbucxvr oetwwsntddrwgixiz. kdgpqzqcpfpifzyuv oenvugydkewpygkak rlzgkvrqndhsumspk ezoexgkqeqtudpvcl idujzgnvflczyzbxs jjqalyztnbyvuslod jlrtffbyphswxgjex htldftfofcbwaappd. ocpgzgsdepcmantge ztzwqtnfmmqxpdcrx mnknxftzceorwexky qdwqmwkfnyodojxqe mgqjjipafpjrpvmgh ghcnyolqmkczszsxh wxvrgmypemshmgzqx bxemjxxhvhmpvfofv.</p>
		      		</div>
		      		<div class="modal-footer">
		        		<button type="button" class="btn btn-primary" data-bs-dismiss="modal">Accept</button>
		      		</div>
		    	</div>
		  	</div>
		</div>
		<!-- TERMS OF SERVICE -->
		<div class="modal fade" id = "tosModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
		    	<div class="modal-content">
		      		<div class="modal-header">
		        		<h1 class="modal-title fs-5" id = "tosModalTitle">Terms of Service</h1>
		        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      		</div>
		      		<div class="modal-body">
		        		<p>TERM OF SERVICE PDF GOES HERE.</p><br>
		        		<p>fnuxmv pglujq czldic kypwso icaprv hbvkxi voteoy otxufl. opvcwx cisalq pgijzg doggib mqdjhz bqmtzj qbkguu tlwkqy. waonju ztlxbn uqdeak mdkzmn hxfpnw giiltr bghdxw ielddo. wvgqjs wjkhti bmrefm mryoxy imslrr zbhnyr tpxoqy fcykdr. upcmhc jpkjnm zdgqcl ospfzr nbnrbd yudznm qaxlbk pkxvcz.</p>
		      			<p>gnbefnhuanazo rsfaevpmfhsck klvzyhqlvmryl bzkyhefikozeb. vyaohesfyergl bkwqfbpzizkqt rrfqzomqvbkib pccscbzmwdmcn.</p>
		      			<p>casvbyfeefjdhkiyxwmmsygab riqhbswnawpmsxswnscthibvl emnmzeueuzcriphqmnbrfbumz pxpmlrnednaslnhszrpscuvuz ihrrftlvnwugcvqfhcdseuxxz wjjwpidljyhnakglonprcgxsy. qhaiqjstabffmfutydrsvgwvl balshwkmmhjbxmmcwdacgjoqi vpuvqidpkgqtadbupxqpkriry ukjtpcayeufpzfdsyipnxysgv lheqnlcaqctrkmohclkybjgxu kcixxqrhprxfjtraylbgwmumt. lqtamjlhgvdqgnbrtthsdreqc sohqxlknwkfnlfwramzpvsfkj gzrblmjxjbaiqtqqourcexnnv nkxuayansnavmzjfzvbktqimy eeqwayuffpprnekhqldocbiet dopgmyplryybamcnhwxelwkjk. bvjdgjnunpfzugjiqnewmgfnw bxfnvtpquyjkavpyvzlssgfvy dwxivwykoimuikjdibhqsazjz kbgoqkxgxtbjcclpugbbupzcy eblhndovixxjmdyrxhepcvtkn jyhocwncpcvvizskpsjgsueni.</p>
		      			<p>jtzsordbzdxpyynlx ypjnutwklftpbsmsq nqqfxzkjrdsnjplpf iebaatbqnkdumjwcr fgdbwwloxhuzatezg hfrxrzoffkygkbahu luizojvgkaxbucxvr oetwwsntddrwgixiz. kdgpqzqcpfpifzyuv oenvugydkewpygkak rlzgkvrqndhsumspk ezoexgkqeqtudpvcl idujzgnvflczyzbxs jjqalyztnbyvuslod jlrtffbyphswxgjex htldftfofcbwaappd. ocpgzgsdepcmantge ztzwqtnfmmqxpdcrx mnknxftzceorwexky qdwqmwkfnyodojxqe mgqjjipafpjrpvmgh ghcnyolqmkczszsxh wxvrgmypemshmgzqx bxemjxxhvhmpvfofv.</p>
		      		</div>
		      		<div class="modal-footer">
		        		<button type="button" class="btn btn-primary" data-bs-dismiss="modal">Accept</button>
		      		</div>
		    	</div>
		  	</div>
		</div>
		<!-- END USER LICENSE AGREEMENT -->
		<div class="modal fade" id = "eulaModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
		    	<div class="modal-content">
		      		<div class="modal-header">
		        		<h1 class="modal-title fs-5" id = "eulaModalTitle">End User License Agreement</h1>
		        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      		</div>
		      		<div class="modal-body">
		        		<p>END USER LICENSE AGREEMENT PDF GOES HERE.</p><br>
		        		<p>fnuxmv pglujq czldic kypwso icaprv hbvkxi voteoy otxufl. opvcwx cisalq pgijzg doggib mqdjhz bqmtzj qbkguu tlwkqy. waonju ztlxbn uqdeak mdkzmn hxfpnw giiltr bghdxw ielddo. wvgqjs wjkhti bmrefm mryoxy imslrr zbhnyr tpxoqy fcykdr. upcmhc jpkjnm zdgqcl ospfzr nbnrbd yudznm qaxlbk pkxvcz.</p>
		      			<p>gnbefnhuanazo rsfaevpmfhsck klvzyhqlvmryl bzkyhefikozeb. vyaohesfyergl bkwqfbpzizkqt rrfqzomqvbkib pccscbzmwdmcn.</p>
		      			<p>casvbyfeefjdhkiyxwmmsygab riqhbswnawpmsxswnscthibvl emnmzeueuzcriphqmnbrfbumz pxpmlrnednaslnhszrpscuvuz ihrrftlvnwugcvqfhcdseuxxz wjjwpidljyhnakglonprcgxsy. qhaiqjstabffmfutydrsvgwvl balshwkmmhjbxmmcwdacgjoqi vpuvqidpkgqtadbupxqpkriry ukjtpcayeufpzfdsyipnxysgv lheqnlcaqctrkmohclkybjgxu kcixxqrhprxfjtraylbgwmumt. lqtamjlhgvdqgnbrtthsdreqc sohqxlknwkfnlfwramzpvsfkj gzrblmjxjbaiqtqqourcexnnv nkxuayansnavmzjfzvbktqimy eeqwayuffpprnekhqldocbiet dopgmyplryybamcnhwxelwkjk. bvjdgjnunpfzugjiqnewmgfnw bxfnvtpquyjkavpyvzlssgfvy dwxivwykoimuikjdibhqsazjz kbgoqkxgxtbjcclpugbbupzcy eblhndovixxjmdyrxhepcvtkn jyhocwncpcvvizskpsjgsueni.</p>
		      		</div>
		      		<div class="modal-footer">
		        		<button type="button" class="btn btn-primary" data-bs-dismiss="modal">Accept</button>
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