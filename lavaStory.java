import processing.core.*;

public class lavaStory{
  private PApplet p;
  private int Lsx;
  private int Lsy;
  private int Agx;
 private int Agy;
 public lavaStory(PApplet p){
   this.p=p;
   Lsx=80;
   Lsy=100;
  Agx=70;
  Agy=200;
  }
 public void display1(){
   p.background(0);
     p.textSize(50);
     p.fill(255,0,0);
  p.text("Lava Girl Origin",Lsx,Lsy);
 p.textSize(30);
  p.text("A girl really liked lava \n and one day got to close\n to a volcano and it gave her \n superpowers ",Agx,Agy);
  }
  
}
