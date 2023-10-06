int dotsSum = 0;
Dice tf;
void setup(){
  size(600,600);
  noLoop();
}
void draw(){
  fill(get(1,1)); //rectangle covers the past total number of dice text
  noStroke();
  rect(245,540,117,50);
  fill(255);
  stroke(0);
//change x and y if change size of dice
  for (int y = 5; y < 540; y+=60){
    for (int x = 5; x < 600; x+=60){
      tf = new Dice(x,y);
      tf.roll();
      tf.show();
    }
  }
  for (int x = 5; x < 245; x+=60){ //bottom left 4 dice
    tf = new Dice(x, 540);
    tf.roll();
    tf.show();
}
  for (int x = 365; x < 600; x+=60){
    tf = new Dice(x, 540);
    tf.roll();
    tf.show();
  }
  text(("Number of Dots: " + dotsSum), 250, 570);
}
void mousePressed(){
  dotsSum = 0;
  redraw();
}
class Dice{
  int myX, myY, dots;
  Dice(int x, int y){
    myX = x;
    myY = y;
  }
  void roll(){
   dots = (int)(Math.random()*6+1);
   dotsSum = dotsSum + dots;
  }
  void show(){
    fill(255);
    rect(myX, myY, 50, 50); 
    fill(0);
    //all the dots code
    if (dots == 1){
      ellipse(25+myX,25+myY,5,5);
    } else if (dots == 2){
      ellipse(12.5+myX,12.5+myY,5,5);
      ellipse(37.5+myX,37.5+myY,5,5);
    } else if (dots == 3){
      ellipse(12.5+myX,12.5+myY,5,5);
      ellipse(25+myX,25+myY,5,5);
      ellipse(37.5+myX,37.5+myY,5,5);
    } else if (dots == 4){
      ellipse(12.5+myX,12.5+myY,5,5);
      ellipse(37.5+myX,12.5+myY,5,5);
      ellipse(12.5+myX,37.5+myY,5,5);
      ellipse(37.5+myX,37.5+myY,5,5);
    } else if (dots == 5){
      ellipse(12.5+myX,12.5+myY,5,5);
      ellipse(37.5+myX,12.5+myY,5,5);
      ellipse(25+myX,25+myY,5,5);
      ellipse(12.5+myX,37.5+myY,5,5);
      ellipse(37.5+myX,37.5+myY,5,5);
    } else {
      ellipse(12.5+myX,12.5+myY,5,5);
      ellipse(25+myX,12.5+myY,5,5);
      ellipse(37.5+myX,12.5+myY,5,5);
      ellipse(12.5+myX,37.5+myY,5,5);
      ellipse(25+myX,37.5+myY,5,5);
      ellipse(37.5+myX,37.5+myY,5,5);
    }
  }
} //end of class Dice
