<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<link rel="shortcut icon" type="image/png" href="https://thumb1.shutterstock.com/display_pic_with_logo/265516/708030436/stock-vector-grayscale-heartbeat-vital-sign-to-ekg-frequency-708030436.jpg"/>

<spring:url value="/resources/main.css" var="mainCSS" />
<spring:url value="/resources/test.js" var="testJS" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link href="${mainCSS}" rel="stylesheet" />
<script src="${testJS}"></script>
<title>MLAapp</title>
<style type="text/css">
body {
	
}
</style>
</head>
<body>

	<h1>Machinelearning</h1>
	<div id="wrapper">
	<section id="main" class="wrapper">
						<div class="inner">
						
						<hr>
 					<div id="results" >
 					<h2>Results:</h2>
 					
 					<p id="resultField">${results}</p>
 					
 					</div>
						
							<a href="ML.html" class="button special fit">Back</a>

	</section>
				<%-- 							${message} --%>
				<!--  		<h2>Checkout this font color. Loaded from 'crunchify.css' file under '/WebContent/resources/' folder  -->
				<!-- 		</h2> -->

				<!-- 		<div id="crunchifyMessage"></div> -->
	</div>



	<br>
	<br>


</body>
</html>