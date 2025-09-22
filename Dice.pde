Die dice1;

void setup(){
  size(1000,1000);
  noLoop();
  dice1 = new Die(450,450);
}

void draw(){
  //table
  background(108,72,24);
  fill(27,85,9);
  stroke(52,29,5);
  rect(30,30,940,940,50);
  
  //die
  dice1.roll();
  dice1.show();
}


void mousePressed(){
  redraw();
}


class Die {//models one single dice cube
  int rolledNumber, diceX, diceY;
  
  Die(int x, int y){ //contructor
    //variable initializations here
    diceX = x;
    diceY = y;
    rolledNumber = 0;
  }
  void roll(){
   rolledNumber = (int)(Math.random()*7);
  }
  void show(){
   stroke(139,138,94);
   fill(255,254,227);
   rect(diceX, diceY, 50,50,20); 
   //dots
   fill(139,138,94);
   if(rolledNumber == 1||rolledNumber == 3||rolledNumber == 5){
     ellipse(diceX+25,diceY+25,10,10);
   } else if(rolledNumber == 2||rolledNumber == 6) {
     ellipse(diceX+17,diceY+17,10,10);
     ellipse(diceX+34,diceY+34,10,10);
  }
}
