import processing.core.*;

public class Inst {
  private PApplet p;
  private PImage space;

  public Inst(PApplet p) {
    this.p=p;
  }
  void instructions1() {
   // p.image(space,0,0);
    p.background(0);
    p.textSize(30);
    p.fill(255);
    p.text("Instructions:", p.width/2-80, p.height-400);
    p.textSize(15);
    p.text("Use the arrows or the W & S key to navigate the Spaceships ", p.width/2-210, p.height-350);
    p.text("avoid obsticles to gain points, hit an obsticle and you lose points", p.width/2-240, p.height-325);
    p.text("you have n seconds to get the most points and win the game ", p.width/2-220, p.height-300);
    p.text("Press mouse to continue ", p.width/2-90, p.height/2+40);
    p.textSize(30);
    p.text("Good Luck:", p.width/2-80, p.height-250);
  }
}
