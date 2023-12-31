class Lava{
 int x = 100;
int y =  100;
boolean works = false;
Lava(){
  
}

void displayRect(){
  fill(255,0,0,150);
  ellipse(100,y,70,70);
  noTint();
  image(rRock, 65, y-18);
  
}

void move(){
  y = constrain(y,0+50,(height/2-5)-40);
   if(w){
        y = y-20;   
        move.play();
  }
  if(s){
        y = y+20;  
        move.play();
  }
  
 
}

void displayCir(int x, int y){
  background(0);
  rect(x,y,100,100);
}


void check(){
 //check if it hits the pillars
  
 for(int i = 4; i <8; i++){
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
        
        /*println(""); //<>//
      println(i);
      println("wallX MIN : " + posX[i] + " wallX Max: " + (posX[i]+wid[i]));
     println("RocketX Min: " + (x-25) + " RocketX Max: " + (x+25));
     println("wallY MIN : " + posY[i] + " wallY Max: " + (posY[i]+len[i]));
     println(y);
      println("RocketY Min: " + (y-32) + " RocketY Max: " + (y+32));
     println("HIT WALL");*/ //<>//
     } 
 }//if
 
      
    
 }//for
}//cheeck

void take(){ 
  loss.play();
    Rscore--;
    println(Rscore);
       
 
}


}//class
