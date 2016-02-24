<h2>Contacto:</h2>
<form role="form">
	<div class="row">

		<div class="col-md-6">
			<div class="form-group">
				<label for="email">Nombre:</label> <input type="text"
					class="form-control" id="nombre" />
					
			</div>
			<div class="form-group">
				<label for="pwd">Correo electrónico:</label> 
				<input type="email"
					class="form-control" id="email" />
			</div>

			<div class="form-group">
				<label for="pwd">Asunto:</label> <input type="text"
					class="form-control" id="asunto" />
			</div>
			<div class="form-group">
				<label for="pwd">Mensaje:</label>
				<textarea type="password" class="form-control" id="mensaje">
				</textarea>
			</div>

			<button type="submit" class="btn btn-default">Envíar</button>
		</div>
		<div class="col-md-6" style="display:none" id="emailImage">
			<img src="images/email.jpg">
		</div>

	</div>
</form>