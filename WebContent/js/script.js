var title = "MILAGROS, AMOR Y SALVACIÓN";


$(document).ready(function() {
	loadVar();
	drawDynamicBackground();
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
	$(".panel-body").hide();
	$(".panel-body").eq(index).show();
}

function loadImages(){
	$("#emailImage").css("display","none");
	$("#emailImage").show('slow');
}
