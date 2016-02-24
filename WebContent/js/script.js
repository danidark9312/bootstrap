var title = "MILAGROS, AMOR Y SALVACIÓN";



$(document).ready(function(){
loadVar();	
drawDynamicBackground();
});


function loadVar(){
$("span[var=title]").parent().html(title);	
}

function selectMenu(component,index){
	$(".navbar .active").removeClass("active")
	$(component).parent("LI").attr("class","active");
	var pageToIndex = parseInt($(component).attr("role"));
	var pageTo = location.href;
	switch(pageToIndex) {
    case 1:
        show(index);
        break;
    case 2:
        show(index);
        break;
	case 3:
        
        break;
	case 4:
        
        break;
}
//location.href=pageTo;
}

function show(index){
	$(".panel-body").hide('slow');
	$(".panel-body").eq(index).show('slow');
}


