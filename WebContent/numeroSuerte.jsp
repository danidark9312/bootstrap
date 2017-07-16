
<h1 style="color: white;text-align: center;">Número de la prosperidad</h1>

<h3 style="text-align: center;">Preparate para recibir el número de su suerte</h3>

<div class="row">
	<div class="col-md-4">
		<p>
		Ingresa la información siguiente y espera que nuestro sistema genere un número de suerte para ti en el día de hoy
		</p>
		<div class="numGenerator">
		</div>
		
		<p>Para cada dia, tenemos un número con el que seguramente te podra ir bien, cada dia generamos para ti un numero diferente</p>
		</div>
	<div class="col-md-7 numberGenerator">
	<div class="row">
		<div class="col-xs-12 dateInfoGroup">
			<label>Fecha de nacimiento</label><input type="date" id="feNacimiento">
		</div>	
		<div class="numberResultGroup">
			<span id="num1" ></span>
			<span id="num2" ></span>
			<span id="num3" ></span>
			<span id="num4" ></span>
		</div>	
	</div>
	<div class="row">
		<div class="col-xs-12 buttonGenerarDiv">
			<input type="button" value="Generar" onclick="generarNumero()" />
		</div>	
	</div>
	</div>
		<br/>	
		
	
	
</div>
<div class="row">
		<div class="numberResult">
		<span>Felicitaciones! Ahora que tienes tu número, llama a uno de nuestros asesores y permite que te indique como generar prosperidad <strong><%=telephone%></strong></span><br/>
		<span>Permite que un asesor se comunique contigo de forma gratuita </span><a href="javascript:void(0)" onclick='selectMenu(this,4);loadImages()'>Click Aqui</a>
		</div>	
	</div>
	 	<small>aplican condiciones y restricciones</small>
<br/>

<script>

function generarNumero(){
	
	
	
	var feNacimiento = $("#feNacimiento").val();
	
	if(feNacimiento == ""){
		alert("Requerimos conocer tu fecha de nacimiento\npara poder darte tu número de la suerte !");
		return;
	}
	
	$("body").css("cursor","wait");
	
	$(".col-md-7.numberGenerator").css("background-color","#00af03");
	
	setTimeout(function(){
		var currentTime = new Date(Date.parse(feNacimiento));

		// returns the month (from 0 to 11)
		var month = currentTime.getMonth() + 1;

		// returns the day of the month (from 1 to 31)
		var day = currentTime.getDate();

		// returns the year (four digits)
		var year = currentTime.getFullYear();
		
		var currentDate = new Date().getDate();
		
		var num = month*day*year*currentDate;
		
		var array = (num+"").split("");
		
		$("#num1").text(array[0]);
		
		
		setTimeout(function(){
			$("#num2").text(array[1]);
			setTimeout(function(){
				$("#num3").text(array[2]);
				setTimeout(function(){
					$("#num4").text(array[3]);
					$("body").css("cursor","auto");
					$(".col-md-7.numberGenerator").css("background-color","#a90000");
					$(".numberResult").show("slow");
				},500);
			},500);
		},500);
			
		
		
		
		
	},2000);
	
	

}
</script>	

