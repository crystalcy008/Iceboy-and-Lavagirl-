import processing.sound.*;
leader l;
//LOOK AT REFERENCES
IntDict inventory;
//make method for score
SoundFile loss;
SoundFile ending;
SoundFile move;
int bF= 0;
int rF = 0;

//for leaderboard
boolean one = false;
boolean two = false;
boolean  three = false;

Obstacle Surface2, Obstacle1, Obstacle2, Surface, Surface3, Obstacle3, Obstacle4, Obstacle5, Obstacle6, Obstacle7, Obstacle8;
Inst inst1;
lavaStory lavastory1;
iceBoy iceBoy1;
gameOver gameOver1;

//int counter;
PImage bakground;
boolean red = false;
int Rscore = 100;
int Bscore = 100;
boolean Rhit = false;
boolean Bhit = false;

PImage fire;
PImage ice;

//TIMER STUFF
String time = "030";
int t;
int interval = 30;


//Crystal
int[] posX = new int[8];
int[] posY = new int[8];
int[] wid = new int[8];
int[] len = new int[8];
//rockets 
PImage rRock;
PImage bRock;
Ice Blue;
Lava Red;
boolean up = false;
boolean w = false;
boolean s = false;
boolean down = false;

//game end
//boolean win = false;
//boolean lose = false;
boolean end = false;



////Booleans for transtions
//sanaa
boolean first = true;
boolean second = false;
boolean third = false;
boolean fourth = false;
boolean fifth = false;
//boolean gamenotplayed=false;
boolean playGame = false;
boolean lavaGirlStory = false;
boolean iceBoySotry = false;
boolean gameReset = false;

//words for story page
String[] headlines = {
  "One day two siblings Lava Girl and Ice boy were flying through space.", 
  "They decided to show off their flying skills by raceing eachother ", 
  "They wagered a bet of 4 million dollars to who ever wins", 
  "Help Lava Girl Or Ice Boy navigate through space to win the bet", 
  "Press any key to continue", 

};



//also for story page 
PFont f; // Global font variable
float x; // Horizontal location
int index = 0;
//for moving circles startup page
float circleX= width;// ball starts at random point
int circleY=height+150;
int speedX=3; //speed 
int speedY=3;//500,500
int movesX=width/2-150;

//images
PImage logo1;//apple image
PImage space;
PImage WS;
PImage up2;
PImage user;
PImage score;
//sound
import processing.sound.*;//sound
SoundFile song;//apple crunch
//ice boy and lava giurl 

//speed int
int a = 5;
void setup() {
  l = new leader();
  inventory = new IntDict();
  loss = new SoundFile(this, "crunch.mp3");
  ending = new SoundFile(this, "beep.mp3");
  move = new SoundFile(this, "zoom.mp3");

  //Crystal Part
  rRock = loadImage("red.png");
  rRock.resize(80, 40);
  bRock = loadImage("blue.png");
  bRock.resize(80, 40);
  Blue = new Ice();
  Red = new Lava();
  frameRate(10);
  size(500, 500);

  //abdi part
  //pillar

  color colorR_tem1=color(255, 0, 0);
  color colorR_tem2=color(0, 0, 255);

  Surface=new Obstacle(0, height/2, width, 15, 255);//center
  Surface2=new Obstacle(0, height-5, width, 5, 255);//bottom
  Surface3=new Obstacle(0, 0, width, 5, 255);//top


  Obstacle1= new Obstacle(width, height/2+15, 30, 90, colorR_tem1);//bottom_top1
  Obstacle2= new Obstacle(width, height/2-95, 30, 90, colorR_tem2);//top_bottom1

  Obstacle3= new Obstacle(width+120, 5, 30, 90, colorR_tem2);//top_top1
  Obstacle4= new Obstacle(width+120, height-95, 30, 90, colorR_tem1);//bottom_bottom1

  Obstacle5= new Obstacle(width+240, height/2-95, 30, 90, colorR_tem2);//top_bottom2
  Obstacle6= new Obstacle(width+240, height/2+15, 30, 90, colorR_tem1);//bottom_top2

  Obstacle7= new Obstacle(width+360, 5, 30, 90, colorR_tem2);//top_top3
  Obstacle8= new Obstacle(width+360, height-95, 30, 90, colorR_tem1);//bottom_bottom3
  inst1 = new Inst(this);
  lavastory1= new lavaStory(this);
  iceBoy1 = new iceBoy(this);
  gameOver1 =new gameOver(this);

  bakground = loadImage("space.jpg");
  bakground.resize(500, 500);


  fire = loadImage("fire.png");
  ice = loadImage("ice.png");
  //fire.resize(30, 90);
  /*fire.resize(Obstacle1.wdth, Obstacle1.lgth);
   ice.resize(Obstacle2.wdth, 90);
   ice.resize(Obstacle3.wdth, Obstacle3.lgth);
   fire.resize(Obstacle4.wdth, 90);
   ice.resize(Obstacle5.wdth, 90);
   fire.resize(Obstacle6.wdth, Obstacle6.lgth);*/
  ice.resize(35, 100);
  fire.resize(35, 100);


  //FOR the intial pages_sANAA
  song = new SoundFile(this, "startup2.mp3"); //startup but loop is weird
  logo1=loadImage("Logo3.png");//load image
  logo1.resize(250, 250);//resize
  space=loadImage("space.jpg");//load image
  space.resize(500, 500);//resize
  WS=loadImage("WS.jpg");//load image
  WS.resize(150, 100);//resize
  up2=loadImage("updown.jpg");//load image
  up2.resize(200, 100);//resize
  user=loadImage("User.jpeg");//load image
  user.resize(250, 250);//resize
  score=loadImage("score.jpeg");//load image
  score.resize(250, 250);//resize
  f = createFont( "Lucida Bright", 50);
  // Initialize headline offscreen
  x = width;
}

void draw() {

  if (first) {
    startup();
    if (mousePressed) {
      first= false;
      second=true;
      mousePressed= false;
    }
  }

  if (second==true) {
    gameReset = false;
    gamelogo();
    if (mousePressed) {
      second= false;
      third=true;
      mousePressed= false;
    }
  }

  if (third==true) {
    storypage();
    if (mousePressed) {
      third= false;
      lavaGirlStory=true;
      mousePressed= false;
    }
  }
  if (lavaGirlStory==true) {
    lavastory1.display1();
    if (mousePressed) {
      lavaGirlStory= false;
      iceBoySotry=true;
      mousePressed= false;
    }
  }

  if (iceBoySotry==true) {
    iceBoy1.display();
    if (mousePressed) {
      iceBoySotry= false;
      fourth=true;
      mousePressed= false;
    }
  }


  if (fourth==true) {
    gameReset = false;
    inst1.instructions1();
    if (mousePressed) {
      fourth= false;
      fifth=true;
      mousePressed= false;
    }
  }

  if (fifth==true) {
    aditionalI();
    if (mousePressed) {
      fifth= false;
      one = true;
      frameRate(30);
      mousePressed= false;
      //user;
    }
  }//for the intial game ends here


  if (one) {
    l.display1();
    if (keyCode == SHIFT) {
      one = false;
      two = true;
    }
  }
  if (two) {
    l.display2();
    if (keyCode == TAB) {
      two = false;
      three = true;
      playGame = true;
    }
  }





  //for the gamme
  if (playGame) {
    //abdi
    background(0); 
    image(bakground, 0, 0);
    fill(255);
    rect(0, height/2, width, 15, 255);

    //timer stuff
    fill(0);
    t = interval-int(millis()/1000);
    time = nf(t, 3);
    //speed changes when less time
    if (t < 20) {
      a = 10;
      if (t <10) {
        a=20;
      }
    }
    if (t == 0) {

      playGame = false;
      end = true;
      //gameEnd.winner();
      //need to restart interval?

      //need to restat interval when restart
      //interval+=30;
    }

    text(time, width/2, (height/2)+12);



    //Crystal 
    //background(255);
    Blue.displayCir();
    Blue.move();
    Blue.check();
    Red.displayRect();
    Red.move();
    Red.check();
    fill(255, 0, 0);
    text("Lava: " + Rscore, width/8, (height/2)+12);
    fill(0, 0, 255);
    text("Ice: " + Bscore, width/2+ width/4, (height/2)+12);

    //abdi Obs 
    //NOTE FIRE ROCKET IS TOP HALF
    //ICE ROCKET BOTTOM HALF
    imageMode(CORNER);
    image(fire, Obstacle1.x, Obstacle1.y);
    image(ice, Obstacle2.x, Obstacle2.y);
    image(ice, Obstacle3.x, Obstacle3.y);
    image(fire, Obstacle4.x, Obstacle4.y);
    image(ice, Obstacle5.x, Obstacle5.y);
    image(fire, Obstacle6.x, Obstacle6.y);
    image(ice, Obstacle7.x, Obstacle7.y);
    image(fire, Obstacle8.x, Obstacle8.y);


    Surface.display();
    Surface2.display();
    Surface3.display();

    //ice rocket top 1
    red = true;
    Obstacle1.display();
    Obstacle1.moveLeft(a);
    Obstacle1.reset(90);
    //postion of rec
    posX[0] = Obstacle1.posX();
    posY[0] = Obstacle1.posY();
    wid[0] = Obstacle1.wid();
    len[0] = Obstacle1.len();


    //ice rocket bottom 1
    red = true;
    Obstacle4.display();
    Obstacle4.moveLeft(a);
    Obstacle4.reset(-90);
    //postion of rec
    posX[1] = Obstacle4.posX();
    posY[1] = Obstacle4.posY();
    wid[1] = Obstacle4.wid();
    len[1] = Obstacle4.len();

    //ice rocket top 2
    red = true;
    Obstacle6.display();
    Obstacle6.moveLeft(a);
    Obstacle6.reset(90);
    posX[2] = Obstacle6.posX();
    posY[2] = Obstacle6.posY();
    wid[2] = Obstacle6.wid();
    len[2] = Obstacle6.len();

    //ice rocket bottom 2
    red = true;
    Obstacle8.display();
    Obstacle8.moveLeft(a);
    Obstacle8.reset(-90);
    posX[3] = Obstacle8.posX();
    posY[3] = Obstacle8.posY();
    wid[3] = Obstacle8.wid();
    len[3] = Obstacle8.len();


    //fire rocket top 1
    red = false;
    Obstacle3.display();
    Obstacle3.moveLeft(a);
    Obstacle3.reset(90);
    //postion of rec
    posX[4] = Obstacle3.posX();
    posY[4] = Obstacle3.posY();
    wid[4] = Obstacle3.wid();
    len[4] = Obstacle3.len();

    //fire rocket bottom 1
    red = false;
    Obstacle2.display();
    Obstacle2.moveLeft(a);
    Obstacle2.reset(-90);
    //postion of rec
    posX[5] = Obstacle2.posX();
    posY[5] = Obstacle2.posY();
    wid[5] = Obstacle2.wid();
    len[5] = Obstacle2.len();

    //fire rocket top 2
    red = false;
    Obstacle7.display();
    Obstacle7.moveLeft(a);
    Obstacle7.reset(90);
    //postion of rec
    posX[6] = Obstacle7.posX();
    posY[6] = Obstacle7.posY();
    wid[6] = Obstacle7.wid();
    len[6] = Obstacle7.len();

    //fire rocket bottom 2
    red = false;
    Obstacle5.display();
    Obstacle5.moveLeft(a);
    Obstacle5.reset(-90);
    //postion of rec
    posX[7] = Obstacle5.posX();
    posY[7] = Obstacle5.posY();
    wid[7] = Obstacle5.wid();
    len[7] = Obstacle5.len();
  }

  if (end) {    
    gameOver1.display();
    if (keyCode ==   TAB) {
      three = true;
      end = false;
      playGame = false;
      keyCode = RIGHT;
    }
    if (three) {
      l.grade();
      if (keyCode == SHIFT) {
        gameReset = true;
        three = false;
        end = false;
      }
    }
    if (gameReset) {
      three = false;
      Bscore = 100;
      Rscore =100;
      interval =30;
      interval += 30;
      l.typing="";
      l.saved="";
      end = false;
      fourth = true;
    }
    
  }




}//end of draw



void keyPressed() {
  if (keyCode == UP) {
    up = true;
  } else if (key == 'w' || key == 'W') {
    w = true;
  } else if (key == 's' || key == 'S') {
    s = true;
  } else if (keyCode == DOWN) {
    down = true;
  }

  if (key == '\n' ) {
    l.saved = l.typing;
    l.user = l.saved;
    l.add = true;
    // A String can be cleared by setting it equal to ""
    l.typing = "";
  } else {
    // Otherwise, concatenate the String
    // Each character typed by the user is added to the end of the String variable.
    l.typing = l.typing + key;
  }
}

void keyReleased() {
  if (keyCode == UP) {
    up = false;
  } else if (key == 'w' || key == 'W') {
    w = false;
  } else if (key == 's' || key == 'S') {
    s = false;
  } else if (keyCode == DOWN) {
    down = false;
  }
}
