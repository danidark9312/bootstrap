


<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
        	<a class="navbar-brand" href="#"  onclick="selectMenu(this,0)" role="0"><%=title%></a>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        
        <!--  
        
        	MENU:
	O : INICIO
	1 : POLITICAS
	2 : TERMINOS
	4 : CONTACTO
	5 : AMARRES
	6 : RITUALES
	7 : HECHIZOS
	8 : NUMERO DE SUERTE
	      -->
	      
	      <!-- Collect the nav links, forms, and other content for toggling -->
	      
	        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	            <ul class="nav navbar-nav	">
	      <li class="active"><a href="javascript:void(0)" onclick="selectMenu(this,0)" role="0" >�NICIO</a></li>
	      <li><a id="contactenos" href="javascript:void(0)" onclick="selectMenu(this,5);" role="3">AMARRES</a></li>
	      <li><a id="contactenos" href="javascript:void(0)" onclick="selectMenu(this,6);" role="3">RITUALES DE AMOR</a></li> 
	      <li><a id="contactenos" href="javascript:void(0)" onclick="selectMenu(this,7);" role="3">HECHIZOS</a></li> 
	      <li><a href="javascript:void(0)" onclick="selectMenu(this,3)" role="2">TESTIMONIOS</a></li>
	      <li><a href="javascript:void(0)" onclick="selectMenu(this,8)" role="2">N�MERO DE LA SUERTE</a></li>
	      <li><a id="contactenos" href="javascript:void(0)" onclick="selectMenu(this,4);loadImages()" role="3">CONTACTANOS</a></li>
		  <li class="dropdown"><a class="dropdown-toggle"
			data-toggle="dropdown" href="#">INFORMACI�N LEGAL<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="javascript:void(0)" onclick="selectMenu(this,1)" role="1">POL�TICAS DE PRIVACIDAD</a></li>
				<li><a href="javascript:void(0)" onclick="selectMenu(this,2)" role="2">TERMINOS Y CONDICIONES</a></li>
		 </ul>
	</li>
	
	        </div>
	    </div>
</nav>