//X and Y variables and stuff
var guitarXPos = [];
var guitarYPos = [];
var guitar = "🎸";
var guitarTotal = 40;

var pianoXPos = [];
var pianoYPos = [];
var piano = "🎹";

var pianoTotal = 40;

var violinXPos = [];
var violinYPos = [];
var violin = "🎻";
var violinTotal = 40;

var drumsXPos = [];
var drumsYPos = [];
var drums = "🥁";
var drumsTotal = 3;
var drumsFound = 0;

setup = function() {
   size(600, 450); 

   reset();
}

draw = function(){   

   if(keyPressed){
    if(key == 'r'){
      reset();
    }
   }

  display();
}


mouseClicked = function(){
  check(mouseX, mouseY);
}



var check = function(xClick, yClick){
  for(var i = 0; i < drumsXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, drumsXPos[i], drumsYPos[i])<15){
      drumsXPos.splice(i, 1);
      drumsYPos.splice(i, 1);
      drumsFound++;
    }
  }
}

var display = function(){
  background(100,100,100);

if(mouseClicked && mouseY<200){
background(0,0,0)
}

  fill(200,200,0);
  textSize(20);



i = 0

// violins
  while(i<400){
    text(violin, violinXPos[i], violinYPos[i]);
    i ++;
  }

  for(var i = 0; i < drumsXPos.length; i ++){
    text(drums, drumsXPos[i], drumsYPos[i]);
  }

  for(var i = 0; i < guitarXPos.length; i ++){
    text(guitar, guitarXPos[i], guitarYPos[i]);
  }

//pianos
  for(var i = 0; i < pianoXPos.length; i ++){
    text(piano, pianoXPos[i], pianoYPos[i]);
  }

  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + drums + "s   |   " + drums + " " + drumsFound + "/" + drumsTotal, 0, 425);

  if(drumsFound == drumsTotal){
    fill(82, 204, 255);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);
  }
}

var reset = function(){
  guitarXPos = [];
  guitarYPos = [];
  pianoXPos = [];
  pianoYPos = [];
  drumsXPos = [];
  drumsYPos = [];
  drumsFound = 0;
  violinXPos = [];
  violinYPos = [];



  for(var i = 0; i < guitarTotal; i++){
    guitarXPos.push(random(0,600));
    guitarYPos.push(random(0,400));
  }

   for(var i = 0; i < pianoTotal; i++){
    pianoXPos.push(random(0,600));
    pianoYPos.push(random(0,400));
  }


  for(var i = 0; i < drumsTotal; i++){
    drumsXPos.push(random(0,600));
    drumsYPos.push(random(0,400));
  }

  for(var i = 0; i < violinTotal; i++){
    violinXPos.push(random(0,600));
    violinYPos.push(random(0,400));
  }

}