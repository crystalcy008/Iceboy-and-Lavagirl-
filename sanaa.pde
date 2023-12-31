//for the intial pages_sanaa
void startup(){
  //Circles
  ellipse(circleX,circleY,250,250);
  if(circleX<250){
  circleX=circleX+speedX;
    }else{
  frameRate(4);
  background(0);
  ellipse(height/2,width/2,250,250);
 fill(random(189),random(231),random(255));  
textSize(100);
frameRate(20);
text("Circles",movesX,100);
textSize(20);
    }
    
if(movesX<=100){
    movesX=movesX+speedX;
//first=true;
    } else{
     song.play();//play sound
      noLoop();
    }
//}
loop();
text("Press mouse to continue ",width/2-10,400);
}


void gamelogo(){ 
  image(space,0,0);
 // background(255);
textAlign(CENTER);
 textSize(50); 
  fill(211,48,30);
 text("Lava Girl",width/2-10,height/2-140);
 fill(255);
text("&",width/2-13,height/2-90);
fill(18,119,175);
text("Ice Boy",width/2-13,height/2-40);
fill(211,48,30);
textSize(15);
fill(255);
text("Abdi, Crystal, Sanaa CS-104 Final Project Fall 2022",width/2,height-10);
text("Press mouse to continue ",width/2-10,height/2-20);
image(logo1,110,240);
}



void aditionalI(){
  image(space,0,0);
   image(WS,50,400);
   image(up2,250,400);
   image(user,25,50);
   image(score,250,50);
   
textSize(30);
text("Aditional Instructions",width/2-150,height-450);
textSize(15);
text("W is up S is down",width/2-200,height-100);
text("up arrow is up down arrow is down",width/2-9,height-100);
text("two player game ",width/2-200,height-175);
text("win by getting the highest score",width/2-9,height-175); 

text("Press mouse to continue ",width/2-200,height/2-180);
    
}
