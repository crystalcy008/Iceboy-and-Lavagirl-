//game end is a java class
//gameEnd.winner();
class gameEnd{
  boolean red = false;
  boolean blue = false;
  boolean tie = false;
  
  gameEnd(){
    
  }
  
  void winner(){
    if(Rscore > Bscore){
      red = true;
    }else if(Bscore > Rscore){
      blue = true;
    }else {
      tie = true;
    }
  }
  
  void endScreen(){
    if(red == true){
      background(0);
      //show red planet explode?
      //leaderboard w/ keys to go to main page
      //make sure resets everything back to the original
    }
    
  }
  
  
  
}
