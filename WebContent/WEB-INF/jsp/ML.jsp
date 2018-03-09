<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<link rel="shortcut icon" type="image/png" href="https://thumb1.shutterstock.com/display_pic_with_logo/265516/708030436/stock-vector-grayscale-heartbeat-vital-sign-to-ekg-frequency-708030436.jpg"/>

<spring:url value="/resources/main.css" var="mainCSS" />
<spring:url value="/resources/custom.css" var="customCSS" />
<spring:url value="/resources/test.js" var="testJS" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link href="${mainCSS}" rel="stylesheet" />
<link href="${customCSS}" rel="stylesheet" />
<script src="${testJS}"></script>
<title>MLAapp</title>
<style type="text/css">
body {
	
}
</style>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id" content="376861918782-bppai3761t2ttnjafleatvaaeidod74j.apps.googleusercontent.com">
</head>
<body>

	<!-- Sidebar -->
	<section id="sidebar">
		<div class="inner">
			<nav>
				<ul>

					<li><a href="#intro">Welcome</a></li>
					<li><a href="#one">Test</a></li>
					<li id="signIn"><div class="g-signin2" data-onsuccess="onSignIn"></div></li>
			<li id="signOut"><a href="#" onclick="signOut();">Sign out</a></li>

				</ul>
			</nav>
		</div>
	</section>
	<div id="wrapper">
		<!-- Intro -->
		<section id="intro" class="wrapper style1 fullscreen fade-up">
			<div class="inner">
				<h1>Spring MVC ML</h1>
				<p>Welcome to the Spring MVC Machine Learning App!</p>
				<p>This app currently has a humble beginning, but is destined to do great things!</p>
				<p>It is implemented using Spring MVC, and is planned to make predictions using user inputs, machine learning algorithms and train/test data from health databases. </p>
				
			</div>
		</section>
		<!-- 					one -->
		<section id="one" class="wrapper style2 spotlights">
			<div class="inner">
				<div>
					<h1>Fat calculator</h1>
<form id="submitForm" action="submit.html">

						<input required id="Food" name="Food" type="text" placeholder="Type in any food with quantity. E.g. 1 slice of cake."> <br>
						<br /> <input type="submit" value="Run"  />
</form>
											
					<hr>
<!-- 					<div id="results" style="visibility:hidden;"> -->
<!-- 					<h2>Results:</h2> -->
					
<!-- 					<p id="resultField"></p> -->
					
<!-- 					</div> -->

				</div>

			</div>
		</section>

	</div>

<!-- footer -->
	<footer id="footer" class="wrapper style1-alt">
		<div class="inner">
			<ul class="menu">


				<li>&copy; Untitled. All rights reserved.</li>
				<li>Design: <a href="https://html5up.net/hyperspace">Hyperspace</a></li>
			</ul>
		</div>
	</footer>

</body>
<script>

function signOut() {
  var auth2 = gapi.auth2.getAuthInstance();
  auth2.signOut().then(function () {
    console.log('User signed out.');
  });
}

function onSignIn(googleUser) {
	  var profile = googleUser.getBasicProfile();
	  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
	  console.log('Name: ' + profile.getName());
	  console.log('Image URL: ' + profile.getImageUrl());
	  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
	}
	
	
window.addEventListener("load", function(){
	var isSignedIn =GoogleAuth.isSignedIn.get();
	console.log(auth2);
	
	var signIn=document.getElementById("signIn");
	var signOut=document.getElementById("signOut");

// 	if(GoogleAuth.isSignedIn.get()){
		
// console.log("yesyeysey");		
		
// 	}
// 	else{
		
// 		console.log("nonon");
		
// 	}
	
	
	
	
	
});
</script>

</script>
</html>