var requestAnimationFrame = window.requestAnimationFrame || 
                            window.mozRequestAnimationFrame || 
                            window.webkitRequestAnimationFrame || 
                            window.msRequestAnimationFrame;
							
var starsPosition = new Array();
var myCanvas;


function drawDynamicBackground(){
	setTimeout(function(){
		startDraw();
	},100/10);
		
	//requestAnimationFrame(drawDynamicBackground);
	//requestAnimationFrame(drawDynamicBackground);
}

function startDraw(){
	
	myCanvas = document.createElement("canvas");
				

	//set the canvas width and height
	myCanvas.width=window.innerWidth;
	myCanvas.height=window.innerHeight;
	myCanvas.style.backgroundColor = "black";

	//get the 2-dimensional drawing context
	var ctx = myCanvas.getContext("2d");

	//setup the palette array


	//create 10x10 squares
	var lon = 50;

	ctx.beginPath();
	ctx.rect(0, 0, myCanvas.width, myCanvas.height);
	ctx.fillStyle = "black";
	ctx.fill();

	 


	for(var n=0;n<200;n++){
		var x,y,z;
		if(!starsPosition[n]){
			x=parseInt(Math.random()*myCanvas.width);
			y=parseInt(Math.random()*myCanvas.height);
			z = Math.random()*(4/10);
		}else{
			x = starsPosition[n][0];
			y = starsPosition[n][1];
			z = starsPosition[n][2];
		}
		var radius=Math.random()*3;
		if(x >= myCanvas.width)
			x = 0;
		x+=0.35;
		drawStar(x,y,7,10,1,ctx,z);
		starsPosition[n] = [x,y,z]; 
		
	}

	$("body").css("backgroundImage","url("+myCanvas.toDataURL()+")");
	//document.body.style.backgroundImage = "url:('"+myCanvas.toDataURL()+"')";

	//
	//requestAnimationFrame(drawDynamicBackground);
}


function drawStar(cx,cy,spikes,outerRadius,innerRadius,ctx,trasparency){
	
      var rot=Math.PI/2*3;
      var x=cx;
      var y=cy;
      var step=Math.PI/spikes;

      ctx.strokeSyle="#000";
      ctx.beginPath();
      ctx.moveTo(cx,cy-outerRadius)
      for(i=0;i<spikes;i++){
        x=cx+Math.cos(rot)*outerRadius;
        y=cy+Math.sin(rot)*outerRadius;
        ctx.lineTo(x,y)
        rot+=step

        x=cx+Math.cos(rot)*innerRadius;
        y=cy+Math.sin(rot)*innerRadius;
        ctx.lineTo(x,y)
        rot+=step
      }
      ctx.lineTo(cx,cy-outerRadius)
	  //ctx.strokeSyle="#000";
	  //var trasparency = Math.random()*(2/10);
	  ctx.fillStyle="rgba(255,255,255,"+trasparency+")";
      ctx.fill();
      ctx.closePath();
    }

	function drawGrid(ctx,lon){
		var grayPalette = ["#aaaaaa","#bbbbbb","#cccccc","#dddddd","#eeeeee"];
		for(i=0;i<10;i++){
		 for(j=0;j<10;j++){
		  //indicate when starting drawing a rectangle
		  ctx.beginPath();
		  ctx.rect(0+lon*j,0+lon*i,lon,lon);

		  //choose a random color from the palette
		  var randomColorIndex = 
			Math.round(Math.random() * (grayPalette.length-1));
		  ctx.fillStyle = grayPalette[randomColorIndex];

		  //fill the rectangle with the selected color
		  ctx.fill();

		  //draw a white border for the rectangle
		  ctx.strokeStyle = "#ffffff";
		  ctx.stroke();

		  //indicating when finished drawing the rectangle
		  ctx.closePath();
		  /*ctx.beginPath();
		  for(var n=0;n<100;n++){
			var x=parseInt(Math.random()*myCanvas.width);
			var y=parseInt(Math.random()*myCanvas.height);
			var radius=Math.random()*3;
			ctx.arc(x,y,radius,0,Math.PI*2,false);
			ctx.closePath();
		}
		ctx.fillStyle="white";
		ctx.fill();
		*/

		}
		}
	}
    