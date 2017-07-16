var title = "MILAGROS, AMOR Y SALVACIÓN";


$(document).ready(function() {
	loadVar();
	//drawDynamicBackground();
});


function loadVar(){
$("span[var=title]").parent().html(title);	
}

function selectMenu(component,index){
	activateGoogleEvent();
	$("#bs-example-navbar-collapse-1").removeClass("in");
	
	$(".navbar .active").removeClass("active")
	$(component).parent("LI").attr("class","active");
	show(index);
	if(isMobile()){
		location.href = "#content";
	}
	
}

function activateGoogleEvent(){
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
		
		  ga('create', 'UA-87654356-1', 'auto');
		  ga('send', 'pageview');

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

function isMobile() {
	if (window.innerWidth <= 800 && window.innerHeight <= 600) {
		return true;
	} else {
		return false;
	}

}