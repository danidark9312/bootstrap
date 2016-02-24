<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>
  MILAGROS, AMOR Y SALVACIÓN
  </title>
  
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/script.js"></script>
  <script src="js/canvasDraw.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  .carousel-control{
	background-color: rgb(255, 255, 255);
  }
  
  .panel-body .item p,.panel-body .item h3{
   font-size:18px;
   color:black;
  }
  </style>
  
 
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#" style="cursor:default"><span var="title"/></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="javascript:void(0)" onclick="selectMenu(this,0)" role="1" >ÍNICIO</a></li>
      <li><a href="javascript:void(0)" onclick="selectMenu(this,1)" role="2" >POLÍTICAS DE PRIVACIDAD</a></li>
      <li><a href="javascript:void(0)" onclick="selectMenu(this,2)" role="3">TERMINOS Y CONDICIONES</a></li> 
      <li><a href="javascript:void(0)" onclick="selectMenu(this,3)" role="4">CONTACTANOS</a></li> 
    </ul>
  </div>
</nav>

<div id="background" style="position:absolute;top:0;left:0;display:none"></div>

<!--<img src="http://www.almasdelamor.com/templates/siteground-j16-24/images/headerimg.jpg" />-->


<div class="panel panel-default" style="width:70%;margin:0 auto;/*height:800px;*/background-color:rgb(51,51,51)">
      
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
			  <h3>MILAGROS <%="milagros" %> </h3>
				<p>Lograr esas metas que parecían inalcanzables ahora seran posibles, con ayuda de nuestros rituales y personal especializado</p>
			  			  </div>
			  
			</div>

			<div class="item">
			  <img src="images/love2.jpg" alt="Chania" height="400">
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
	  </div>
	  
	  
	  <div class="panel-body" style="display:none" id="panel-politicas">
			
	  	   <h3 style="color:white">POLÍTICAS Y PRIVACIDAD</h3>
		   <p style="color:white">Almas del Amor por ningún motivo, comercializa, cede o permuta, información proporcionada por clientes o miembros, así mismo, se ha tomado las medidas necesarias, para la protección de datos, que usted como usuario, puede o no suministrar vía web, siendo 100% confidencial. Los formularios en el sitio web, solicitan información que es utilizada en el proceso de elaboración de los rituales solicitados, y él envió de ofertas o información de nuestros servicios, esto implica el consentimiento expreso del interesado a enviar sus datos de carácter personal Usted puede ejercitar sus derechos de acceso, rectificación y cancelación vía correo electrónico al administrador de este sitio. La recopilación o eliminación de datos personales, se puede realizar enviándonos un mensaje a la siguiente dirección: contactoalmasamor@gmail.com. El sitio se reserva el derecho de modificar su política de privacidad y protección de datos de forma discrecional, en cualquier momento y sin previo aviso. Los cambios que afecten al tratamiento de datos personales se comunicarán a los interesados por correo electrónico.</p>
			
	  </div>
	  
    </div>



</body>
</html>