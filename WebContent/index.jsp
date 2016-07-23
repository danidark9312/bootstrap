<%@page import="com.daniel.gutierrez.util.PropertieManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%
String urlPage = PropertieManager.getValue("urlPage"); 
String telephone = PropertieManager.getValue("phone");
String contact = PropertieManager.getValue("contact");
String title = PropertieManager.getValue("title");
%>
  <title>
<%=title%>
  </title>
  
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/script.js"></script>
  <link href="css/style.css" rel="stylesheet" type="text/css"/>
  <script src="js/canvasDraw.js"></script>
  
  
  <script>
  	$(document).ready(function(){});
  </script>
 
</head>
<body style="background-image: url(images/starsbckgnd.png)">


<%@ include file="menu.jsp" %>

<div id="ackground" style="position:absolute;top:0;left:0;display:none"></div>



<div class="row">
	<div id="infoLink" class="fixedPanel col-md-3">
		<div class="panel panel-default"
			style="background-color: rgb(51, 51, 51)">
			<div class="panel-heading graypanel"
				style="text-align: center; color: white; background-color: rgb(109, 109, 109);font-size: 12px;">
				<span class="glyphicon glyphicon-earphone"></span>
				<span style="font-style: italic;">ASESORÍA GRATUITA</span>
				</div>
			<div class="panel-body" id="panel-index">
			<div class="list-group" onclick="selectMenu(this,3);loadImages()">
			    <a href="javascript:void(0)" class="list-group-item">Problemas con tu pareja ?</a>
			    <a href="javascript:void(0)" class="list-group-item">No tienes buena suerte en el amor ?</a>
			    <a href="javascript:void(0)" class="list-group-item">Problemas laborales ?</a>
			    <a href="javascript:void(0)" class="list-group-item">No puedes olvidar esa persona ?</a>
  			</div>
  			<div style="text-align: center;">
  				<h1>LLama ahora </br> <%=telephone%></h1>
  			</div>
			</div>
		</div>
</div>


	
    

<!--<img src="http://www.almasdelamor.com/templates/siteground-j16-24/images/headerimg.jpg" />-->


<div class="panel panel-default col-md-8" style="background-color:rgb(51,51,51);padding: 0">
		<div class="panel-heading graypanel"
			style="text-align: center; color: white; background-color: rgb(109, 109, 109);">AMOR
			Y DINERO</div>
		<div class="panel-body" id="panel-index">
	  	   
			  <div id="myCarousel" class="carousel slide" data-ride="carousel" >
		  <!-- Indicators -->
		  <ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			
		  </ol>

		  <!-- Wrapper for slides -->
		  <div class="carousel-inner" role="listbox">
		  
			

			<div class="item active">
			  <img src="images/salvacion.jpg" alt="Chania">
			  <div class="carousel-caption">
			  <h3>MILAGROS</h3>
				<p>Lograr esas metas que parecían inalcanzables ahora seran posibles, con ayuda de nuestros rituales y personal especializado</p>
			  			  </div>
			  
			</div>

			<div class="item">
			  <img src="images/love2.jpg" alt="Chania">
			  <div class="carousel-caption">
			  <h3 style="color:white">AMOR</h3>
				<p style="color:white">Centro espiritista especializado en el amor donde ayudamos a las personas que tienen problemas para alcanzar la felicidad completa</p>
			  			  </div>
			</div>

			<div class="item">
			  <img src="images/lock.jpg" alt="Chania">
			  <div class="carousel-caption">
			  <h3>SALVACIÓN</h3>
				<p>Resolveremos las dudas que retumban en tu cabeza y en tu corazón mediante la ayuda del Tarot de los Angeles</p>
			  			  </div>
			</div>
		  </div>

		  <!-- Left and right controls -->
		  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		  </a>
		  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		  </a>
		</div>
		
		<div class="panel panel-default" style="width: 80%; margin: 50px auto; /*height:800px;*/ background-color: rgb(97, 97, 105)">

<!-- 		<div class="panel-heading graypanel" style="text-align: center;">AMOR Y DINERO</div> -->


					<div class="panel-heading graypanel" style="color : white;background-color: rgb(109,109,109);">
						<div class="row">
							<div class="col-md-12" style="text-align: center;">
								<h2>¿Has tenido mala suerte en el amor?</h2>
								<h2>¿Tienes dudas de tu pareja?</h2>
								<h2>¿Quieres recuperar a esa persona?</h2>
							</div>
						</div>
					</div>


				<div style="background-color: rgb(134, 134, 134);border-radius: 30px;text-align: center; margin: 17px; padding: 18px;">
					<img src="images/hope.jpg" style="width: 100%;border-radius: 22px;">
				</div>



				<div class="panel-body" id="panel-index" style="padding: 10px 55px;font-size: 17px">
		<p>Amor y salvación es un centro espiritista especializado en el amor donde ayudamos
					a las personas que tienen problemas para alcanzar la felicidad completa en el Amor.</p>
				</br>
				<p>Ofrecemos asistencia en el amor por medio de consejos y sesiones espirituales.
					Resolveremos las dudas que retumban en tu cabeza y en tu corazón mediante la ayuda
					del Tarot de los Angeles, no dudes en consultarnos ahora mismo si la tristeza y el
					desespero están abundando tu corazón. Juntos encontraremos el camino hacia tu
					felicidad.</p>
				
		</div>
		<div class="panel-footer graypanel" style="font-size: 12px">Para Acceder a Este Sitio Debes Ser Mayor de 18 Años.
					Según las legislaciones vigentes, los rituales, limpias, videncias y las predicciones
					tienen fines de entretenimiento y/o ayuda personal.</div>		
			</div>
		
		
	  </div>
	  
	  
	  
	  <div class="panel-body" style="display:none" id="panel-politicas">
	  	<%@ include file="politicas.jsp" %>   
	  </div>
	  
	  <div class="panel-body" style="display:none" id="panel-terminos">
	  	<%@ include file="terminos.jsp" %>   
	  </div>
	  
	  <div class="panel-body" style="display:none" id="panel-testimonios">
	  	<%@ include file="testimonios.jsp" %>   
	  </div>
	  
	  <div class="panel-body" style="display:none" id="panel-contact">
	  	<%@ include file="contact.jsp" %>   
	  </div>
	  
    </div>
</div>

	
	   
    

</body>
</html>