class Obstacle{
int x;
int y;
int wdth;
int lgth;
int xpos;
int speed;
int obstacleSize;
 color colorR;
 boolean isSpawn;//checks if the object is on the screen

Obstacle(int x, int y, int wdth, int lgth,  color colorR){
this.x=x;
this.y=y;
//this.move=move;
this.wdth=wdth;
this.lgth=lgth;
this.colorR=colorR;
}

void display(){
fill(colorR);
noStroke();
/*rectMode(CORNER);
rect(x, y, wdth, lgth);*/


}
void moveLeft(int speed){
  x = x-speed;
}  
void reset(int l){
    if(x<0){
      x=width;
      //y=height-5;
      lgth=l;
      wdth=30;
      //score-=1;
      //speed*=0.8;
      //speedscore();
      if(red){
      colorR=color(255, 0, 0);
      }else{
        colorR=color(0, 0, 255);
      }
      //speed +=(random(10)-5);
    }//end of if statement under reset
}


int posY(){
  return y;
}

int posX(){
  return x;
}

int wid(){
  return wdth;
}

int len(){
  return lgth;
}
}
