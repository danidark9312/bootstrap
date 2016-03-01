<h2>Contacto:</h2>
<form role="form" onsubmit="submitForm()">

	<div class="alert alert-danger" style="display:none">
	  <strong>Error</strong> Los campos marcados con * son obligatorios
	</div>

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