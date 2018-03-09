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
</head>
<body>

	<!-- Sidebar -->
	<section id="sidebar">
		<div class="inner">
			<nav>
				<ul>

					<li><a href="#intro">Welcome</a></li>
					<li><a href="#one">Test</a></li>

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
// function showResults(){
	
	
// 	var heightFld=document.getElementById("height");
// 	var weightFld=document.getElementById("weight");
// 	document.getElementById("results").style.visibility="visible";

// 		document.getElementById("resultField").innerHTML = "Weight:"+weightFld.value+", "+"Height:"+heightFld.value+".";
	
// }

// $(function() {
//     $('#submitForm').on('submit', function(e) {
    	
     

//         	var heightFld=document.getElementById("height");
//         	var weightFld=document.getElementById("weight");
//         	document.getElementById("results").style.visibility="visible";

//         		document.getElementById("resultField").innerHTML = "Weight:"+weightFld.value+", "+"Height:"+heightFld.value+".";
        	
        	
     
//     });
// });


</script>
</html>