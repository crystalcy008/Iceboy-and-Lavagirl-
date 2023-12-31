class Ice {
int x = 100;
int y = 430;
boolean works = false;

Ice(){
  
}


void displayCir(){
  fill(0,0,128,200);
  ellipse(100,y,70,70);
  image(bRock,65, y-18);
  
  
}

void move(){
y = constrain(y,(height/2+5)+45,500-45);
   if(up){
    y = y-10;
    move.play();
    }
  
  if(down){
    y= y+10;
     move.play();
  }
  
  if(y == (height/2+5)+ 35 || y == 500-35){
   println("loser");
  }
  
}

void check(){
 //check if it hits the pillars
  
 for(int i = 0; i <4; i++){
    if((x+25) < posX[i]+wid[i] && (x+25) > posX[i]||(x-25) <posX[i]+wid[i] && (x-25) > posX[i]){
    if((y+32) <posY[i]+len[i] && (y+32) > posY[i]|| (y-32) <posY[i]+len[i] && (y-32) > posY[i]){
       works = true;
     }else{
       println("");
     }
   
     if(works){
        take();
        i++;
        works = false;
        
        /*println("");
        println("");
      println(i);
      println("wallX MIN : " + posX[i] + " wallX Max: " + (posX[i]+wid[i]));
     println("RocketX Min: " + (x-25) + " RocketX Max: " + (x+25));
     println("wallY MIN : " + posY[i] + " wallY Max: " + (posY[i]+len[i]));
      println("RocketY Min: " + (y-25) + " RocketY Max: " + (y+25));
     println("HIT WALL");*/
     }
 }//if
 
  

   //<>//
        }//for
}//check


void take(){
  loss.play();
    Bscore--;
    println(Bscore);
       
 
}


}//class
