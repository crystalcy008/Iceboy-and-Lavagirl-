import processing.core.*;

public class iceBoy{
  private PApplet p;
  private int GOx;
  private int GOy;
  private int CLx;
  private int CLy;
 public iceBoy(PApplet p){
   this.p=p;
   GOx=110;
   GOy=100;
   CLx=60;
  CLy=200;
  }
 public void display(){
   p.background(0);
   p.fill(0, 0, 255);
     p.textSize(30);
  p.text("The origin of Ice Boy",GOx,GOy);
 p.textSize(30);
 
   p.text("A boy really liked ice \n and one day got to close\n to a ice and it turned him \n into ice ",CLx,CLy);
  }
  
}
