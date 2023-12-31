class leader{
  // Variable to store text currently being typed
   int max = 0;
   int sec =0;
   int th =0;
   int la =0;
   
String typing = "";
String user = "";
  int indent = 25;
// Variable to store saved text when return is hit
String saved = "";
  String[] names = {"Circle1", "Circle 2", "P1", "P2"};
  int[] score = {100,40,0,0};
boolean add = false;
  int index=0;
  
  leader(){
    
  }
  
  void display1(){
textSize(30);
 background(255);

  
  // Set the font and fill for text

  fill(0);
  
  // Display everything
  text("Click in this window. \nType your user. \nHit enter to save.", indent, 40);
  textSize(20);
  text("Player 1(ICE): " + typing,indent,190);
  text("Saved text: " + saved,indent,230);
   
  
  
  
  
  if(add){
   //println(user);
   //names[index] = user;
   names[2] = user;
   println(index +": " + names[2]);
   //index = index + 1;
   add = false;

  }
  }
  
  void display2(){
    textSize(30);
 background(255);
 fill(0);  
  // Display everything
  text("Click in this window. \nType your user. \nHit enter to save.", indent, 40);
  textSize(20);
  text("Player 2(LAVA): " + typing,indent,190);
  text("Player 1(ICE): " + saved,indent,230);
  text("click SHIFT play the game", 100, 300);
  
  if(add){
   //println(user);
   names[3] = user;
   println("3" +": " + names[3]);
  // names[index] = user;
   //println(index +": " + names[index]);
   //index = index + 1;
   add = false;
  }

  }
  
void grade(){
  score[2] = Bscore;
  score[3] = Rscore;
  
  background(255);
  fill(20);
  //textMode(CENTER);

    textSize(20);
  text("click shift to go to intruct", 100,20);
    textSize(30);
  text("Leaderboard", 160,50);
 for (int i=0; i<names.length; i++) {
   inventory.set(names[i], score[i]);
  }
     inventory.sortValuesReverse();
     println(inventory);
  String[] scoreslist=str(inventory.valueArray());
  String[] keys=inventory.keyArray();
 saveStrings("names.txt", keys);
 saveStrings("scores.txt", scoreslist );
 String[] n =loadStrings("names.txt");
 String[] s =loadStrings("scores.txt");
 text(n[0], 100,100);
 text(s[0], 300,100);
 text(n[1], 100,200);
 text(s[1], 300,200);
 text(n[2], 100,300);
 text(s[2], 300,300);
 text(n[3], 100,400);
 text(s[3], 300,400);
 
}




  
}
