import processing.core.*;

public class gameOver{
  private PApplet p;
  private int GOx;
  private int GOy;
  private int CLx;
  private int CLy;
 public gameOver(PApplet p){
   this.p=p;
   GOx=120;
   GOy=100;
   CLx=60;
  CLy=300;
  }
 public void display(){
   p.fill(255);
   p.background(0);
     p.textSize(50);
  p.text("Gameover",GOx,GOy);
 p.textSize(30);
   p.text("CLICK TAB to go to leaderboard",CLx,CLy);
  }
  
}
