var title = "MILAGROS, AMOR Y SALVACIÓN";


$(document).ready(function() {
	loadVar();
	//drawDynamicBackground();
});


function loadVar(){
$("span[var=title]").parent().html(title);	
}

function selectMenu(component,index){
	$(".navbar .active").removeClass("active")
	$(component).parent("LI").attr("class","active");
	
	show(index);
}

function show(index){
	$("body > div > .panel-default > .panel-body").hide();
	$("body > div > .panel-default > .panel-body").eq(index).show();
}

function loadImages(){
	$("#emailImage").css("display","none");
	$("#emailImage").show('slow');
}


function submitForm(){
	$(".has-error").removeClass("has-error");
	var form = document.forms[0]; 
	var isValid = true;
	
	if(form.nombre.value.length==0){
		setInputError(form.nombre);
		isValid = false; 
	}
	if(form.email.value.length==0){
		setInputError(form.email);
		isValid = false; 
	}
	if(form.asunto.value.length==0){
		setInputError(form.asunto);
		isValid = false; 
	}
	if(form.mensaje.value.length==0){
		setInputError(form.mensaje);
		isValid = false; 
	}
	
	
	
	if(isValid){
		$(".alert.alert-danger").fadeOut();
		document.forms[0].submit();	
	}else{
		$(".alert.alert-danger").fadeIn();
	}
	
}
function setInputError(input){
	$(input).closest(".form-group").addClass("has-error");
}



function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}