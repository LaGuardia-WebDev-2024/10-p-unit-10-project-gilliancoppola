var paulXPos = [];
var paulYPos = [];
var paul = "⭐️";
var paulTotal = 100;

var johnXPos = [];
var johnYPos = [];
var john = "🪐";
var johnTotal = 3;
var johnFound = 0;

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
  for(var i = 0; i < johnXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, johnXPos[i], johnYPos[i])<15){
      johnXPos.splice(i, 1);
      johnYPos.splice(i, 1);
      johnFound++;
    }
  }
}

var display = function(){
  background(100,100,100);

  fill(200,200,0);
  textSize(20);

  for(var i = 0; i < johnXPos.length; i ++){
    text(john, johnXPos[i], johnYPos[i]);
  }

  for(var i = 0; i < paulXPos.length; i ++){
    text(paul, paulXPos[i], paulYPos[i]);
  }

  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + john + "s   |   " + john + " " + johnFound + "/" + johnTotal, 0, 425);

  if(johnFound == johnTotal){
    fill(0, 200, 200);
    textSize(50);
    text("Press 'r' to repault \nthe game", 50, 200);
  }
}

var reset = function(){
  paulXPos = [];
  paulYPos = [];
  johnXPos = [];
  johnYPos = [];
  johnFound = 0;


  for(var i = 0; i < paulTotal; i++){
    paulXPos.push(random(0,600));
    paulYPos.push(random(0,400));
  }

  for(var i = 0; i < johnTotal; i++){
    johnXPos.push(random(0,600));
    johnYPos.push(random(0,400));
  }
}