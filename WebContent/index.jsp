<%@page import="com.daniel.gutierrez.util.PropertieManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%

HttpServletResponse httpResponse = (HttpServletResponse) response;

httpResponse.setDateHeader("Expires", System.currentTimeMillis() + 604800000L);
httpResponse.setHeader("Pragma", "private");

String urlPage = PropertieManager.getValue("urlPage"); 
String telephone = PropertieManager.getValue("phone");
String contact = PropertieManager.getValue("contact");
String title = PropertieManager.getValue("title");
String isContactUs = request.getParameter("contactenos");

String option = request.getParameter("option");


%>



<script>
var isContact = "<%=isContactUs!=null%>";
	var option = "<%=option%>";
</script>

  <title>
<%=title%>
  </title>
  
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
 
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
			<div class="panel-body" id="panel-index" style="padding: 0px">
  			<div style="text-align: center;">
  				<h2>LLama ahora </br> <%=telephone%>
  				<img src="images/wp.png" style="width: 40px" title="whatsapp disponible">
  				</h2>
  			</div>
			</div>
		</div>
</div>


	
    

<!--<img src="http://www.almasdelamor.com/templates/siteground-j16-24/images/headerimg.jpg" />-->


<div class="panel panel-default col-md-8" style="background-color:rgb(51,51,51);padding: 0" id="content">
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
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
			
		  </ol>

		  <!-- Wrapper for slides -->
		  <div class="carousel-inner" role="listbox">
		  
			

			<div class="item active">
			  <img src="images/santos.jpg" alt="Chania">
							<div class="carousel-caption">
								<h3 style="color:white">Nunca te rindas</h3>
								<p style="color:white">Cada mañana tienes dos opciones: Continuar durmiendo y
									seguir soñando o levantarte y alcanzar tus sueños</p>
							</div>

						</div>
			
			<div class="item ">
			  <img src="images/salvacion.jpg" alt="Chania">
			  <div class="carousel-caption">
			  <h3>MILAGROS</h3>
				<p>Lograr esas metas que parecían inalcanzables ahora podrían ser posibles, con ayuda de nuestros rituales y personal especializado</p>
			  			  </div>
			  
			</div>
			
			<div class="item">
			  <img src="images/trinidad.png" alt="Chania">
							<div class="carousel-caption">
								
								<p style="color:black">Una mala actitud es como un neumático viejo si no la cambias no vas a llegar muy lejos</p>
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
<!-- 			  <img src="images/lock.jpg" alt="Chania"> -->
			  <img src="images/carrying-the-cross.jpg" alt="Chania">
			  <div class="carousel-caption">
			  <h3>SALVACIÓN</h3>
				<p style="color:white">Ayudamos a resolver las dudas que retumban en tu cabeza y en tu corazón mediante la ayuda del Tarot de los Angeles</p>
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
		
		<%@include file="panel-resultados.jsp" %>
		
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
					<img src="images/foto-santo.jpg" style="width: 100%;border-radius: 22px;">
				</div>



				<div class="panel-body" id="panel-index" style="padding: 10px 15px;font-size: 17px">
				<p>Amor y salvación es un centro espiritista especializado en el amor donde ayudamos
					a las personas que tienen problemas para alcanzar la felicidad completa en el Amor.</p>
				</br>
				<p>Ofrecemos asistencia en el amor por medio de consejos y sesiones espirituales.
					Resolveremos las dudas que retumban en tu cabeza y en tu corazón mediante la ayuda
					del Tarot de los Angeles, no dudes en consultarnos ahora mismo si la tristeza y el
					desespero están abundando tu corazón. Juntos encontraremos el camino hacia tu
					felicidad.</p>
					
				<p>Trabajos rápidos y efectivos que te ayudaran</p>
				<ul>
					<li>Amarres de amor ágiles y efectivos</li>
					<li>Recuperar a su pareja</li>
					<li>Reencontrar sus seres queridos</li>
					<li>Recuperar su empleo</li>
					<li>Solucionar problemas de amor</li>
					<li>Mejorar la relación con su familia</li>
					<li>Mejorar su vida personal, profesional y laboral</li>
					<li>Encontrar el amor de su vida</li>
				</ul>
				<p>
				Nuestros psicólogos espiritistas le haran un análisis que permita determinar si usted posee o esta bajo 
				algún efecto de brujería o proceso negativo que hayan podido realizarle para frenar su progreso, perder sus
				relaciones afectivas o incluso llegar a la desesperación.
				</p>
				<p>Luego podran determinar si es posible realizar una limpieza que permita retomar su vida habitual y compartir
				tiempo de calidad con las personas que ama</p>
				
		</div>
		
		<div style="background-color: rgb(134, 134, 134);border-radius: 30px;text-align: center; margin: 17px; padding: 18px;">
					<img src="images/dosvelas.jpg" style="width: 100%;border-radius: 22px;">
				</div>
		
		<div class="panel-footer graypanel" style="font-size: 12px">Para acceder a este sitio debes ser mayor de edad.
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
	  
	  <div class="panel-body" style="display:none" id="panel-contact">
	  	<%@ include file="amarres.jsp" %>   
	  </div>
	  
	  <!-- 7 -->
	  <div class="panel-body" style="display:none" id="panel-contact">
	  	<%@ include file="rituales.jsp" %>   
	  </div>
	  
	  <!-- 8 -->
	  <div class="panel-body" style="display:none" id="panel-contact">
	  	<%@ include file="hechizos.jsp" %>   
	  </div>
	  
	  <!-- 9 -->
	  <div class="panel-body" style="display:none" id="panel-contact">
	  	<%@ include file="numeroSuerte.jsp" %>   
	  </div>
	  
	  <div id="infoLink" class="fixedPanel col-md-12">
		<div class="panel panel-default"
			style="background-color: rgb(51, 51, 51)">
			<div class="panel-heading graypanel"
				style="text-align: center; color: white; background-color: rgb(109, 109, 109);font-size: 12px;">
				<span class="glyphicon glyphicon-earphone"></span>
				<span style="font-style: italic;">ASESORÍA GRATUITA</span>
				</div>
			<div class="panel-body" id="panel-index">
<!-- 			<div class="list-group" onclick="selectMenu(this,4);loadImages()"> -->
<!-- 			    <a href="javascript:void(0)" class="list-group-item">Problemas con tu pareja ?</a> -->
<!-- 			    <a href="javascript:void(0)" class="list-group-item">No tienes buena suerte en el amor ?</a> -->
<!-- 			    <a href="javascript:void(0)" class="list-group-item">Problemas laborales ?</a> -->
<!-- 			    <a href="javascript:void(0)" class="list-group-item">No puedes olvidar esa persona ?</a> -->
<!--   			</div> -->
  			<div style="text-align: center;">
  				<h2>LLama ahora </br> <%=telephone%>
  				<img src="images/wp.png" style="width: 40px" title="whatsapp disponible">
  				</h2>
  				
  				<h3 style="margin-top: 0">Servicio 24 Horas</h3>
  				
  				<small style="color:white">*Llamadas sin Costo Adicional, sujeto a los costos del operador (costo de llamada 0,05 USD a 0,20 USD por minuto)</small>
  			</div>
			</div>
		</div>
</div>
	  
	  
	  
	  
	  
	  
	  <!--Begin Comm100 Live Chat Code-->

<div id="comm100-button-221">

</div>

<script type="text/javascript">
 if(true){

    var Comm100API = Comm100API || new Object;
    Comm100API.chat_buttons = Comm100API.chat_buttons || [];
    var comm100_chatButton = new Object;
    comm100_chatButton.code_plan = 221;
    comm100_chatButton.div_id = 'comm100-button-221';
    Comm100API.chat_buttons.push(comm100_chatButton);
    Comm100API.site_id = 219688;
    Comm100API.main_code_plan = 221;

    var comm100_lc = document.createElement('script');
    comm100_lc.type = 'text/javascript';
    comm100_lc.async = true;
    comm100_lc.src = 'https:chatserver.comm100.com/livechat.ashx?siteId=' + Comm100API.site_id;
    var comm100_s = document.getElementsByTagName('script')[0];
    comm100_s.parentNode.insertBefore(comm100_lc, comm100_s);

    setTimeout(function() {
        if (!Comm100API.loaded) {
            var lc = document.createElement('script');
            lc.type = 'text/javascript';
            lc.async = true;
            lc.src = 'https:hostedmax.comm100.com/chatserver/livechat.ashx?siteId=' + Comm100API.site_id;
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(lc, s);
        }
    }, 5000)

}

</script>

<!--End Comm100 Live Chat Code-->
	  
    </div>
</div>

	
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js" ></script>
  <script src="js/script.js" ></script>
  
  <script src="js/canvasDraw.js" async></script>
  
  
  <script>
  	$(document).ready(function(){
  		
  		if(isContact!="false"){
  			selectMenu(this,4);
  			loadImages()	
	  		}
  		
  		else if(option!="null"){
  			if(option == "amarres"){
  				selectMenu(this,5);
  			}else if(option == "contactus"){
  				selectMenu(this,4);
  			}else if(option == "rituales"){
  				selectMenu(this,6);
  			}else if(option == "hechizos"){
  				selectMenu(this,7);
  			}
  			
  		}
  		
  	});
  </script>
  
  <script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
	
	  ga('create', 'UA-87654356-1', 'auto');
	  ga('send', 'pageview');

</script>
    
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="css/style.css" rel="stylesheet" type="text/css"/>

</body>
</html>


