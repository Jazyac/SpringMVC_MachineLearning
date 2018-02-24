<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
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