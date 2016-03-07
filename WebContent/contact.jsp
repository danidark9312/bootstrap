<h2>Contacto:</h2>
<form role="form" onsubmit="submitForm()" action="GenericServlet">

	<div class="alert alert-danger" style="display:none">
	  <strong>Error</strong> Los campos marcados con * son obligatorios
	</div>
	
	<% 
	if("true".equals(request.getParameter("exito"))){
		
	%>
	<script>
		$(document).ready(function(){
			selectMenu(this,3);loadImages();
			})
	</script>
	<div class="alert alert-success">
  		<strong>Exito!</strong> Su mensaje ha sido recibido exitosamente, en breve uno de nuestros asesores se pondra en contacto
	</div>
	<%
	}
	%>
	
	<input name="operation" value="1" type="hidden" />
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label for="email">(*)Nombre:</label> 
				<input type="text" maxlength="40" class="form-control" id="nombre" name="nombre"/>
					
			</div>
			<div class="form-group">
				<label for="pwd">(*)Correo electrónico:</label> 
				<input type="email" maxlength="40"
					class="form-control" id="email" name="email"/>
			</div>
			<div class="form-group">
				<label for="pwd" style="display:block">Teléfono:</label> 
				<span style="float: left;width: 5%;color:white;margin-top: 6px">+1</span>
				<input onkeypress="return isNumber(event)" type="text" class="form-control" id="phoneId" name="phoneId" style="width: 20%;float: left" maxlength="3"/>
				<input onkeypress="return isNumber(event)" type="text" class="form-control" id="phoneText" style="width: 75%" name="phoneText" maxlength="10"/>
			</div>

			<div class="form-group">
				<label for="pwd">(*)Asunto:</label> <input type="text" maxlength="40"
					class="form-control" id="asunto" name="asunto"/>
			</div>
			<div class="form-group">
				<label for="pwd">(*)Mensaje:</label> 
				<textarea type="password" class="form-control" id="mensaje" name="mensaje">
				</textarea>
			</div>

			<button type="submit" class="btn btn-default">Envíar</button>
		</div>
		<div class="col-md-6" style="text-align: center">
			<img src="images/llamanos.png">
		</div>
		
	
	</div>
	<div class="col-md-8 col-md-offset-2" style="text-align: center;">
	<div class="well" style="margin-top: 10px;color:black">La asesoría telefónica no tiene ningún costo</div>
	</div>
	
</form>