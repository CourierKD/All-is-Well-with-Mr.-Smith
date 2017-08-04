import processing.sound.*;
SoundFile file;
SoundFile endingsound1;

int xPosition;
int yPosition;
int ys = 2;
int xs = 3;

int stage = 0;
int clock  = 0;
boolean doonce = true;
boolean youwin = false;
int counter1;
int counter2;
int counter3;
int counter4;
int counter5;
int counter5a;
int counter6;
int counter7;
int counter8;
int counter9;
int counter10;
int counter11;
int counter12;
int bbx;
int bby = 90;
PFont f;           //font
PImage title;
PImage ending1;
PImage ending2;
float x;           //horizontal location of headline
String ntv1  = "Mr.Smith wake up today, what's in front of him are 3 buttons, as usual. Mr.Smith's job is to push the button which the system tells him to push. Today, the system ask him to push the RED button.";
String ntv2  = "As always, Mr.Smith did his job well, and never ask why. Does he ever think about what consequence would come by pressing these buttons?";
String ntv2a = "Do you, Mr.Smith?";
String ntv3  = "I'll let you press the button again. You have a chance to make your own choice. But always remember what the system told you.";
String ntv4  = "Very well done, Mr.Smith. You have proved you are a loyal employee in the ministry of truth. ";
String ntv4a = "THE BIG BROTHER LOVES YOU.";
String ntv5  = "Impressive. It seems like Mr.Smith has grown free will and for the first time, he choose to disobey the system.                    But, is it possible...?";
String ntv5a = "But, is it possible...?                              ";
String ntv6  = "Let's try this again. Please press the red button, Mr.Smith.";
String ntv7  = "See? It's not that hard to follow the instructions.";
String ntv8  = "So, press the red button, Mr. Smith. Please, FOLLOW THE INSTRUCTION.";
String ntv9  = ".  .  .                   It looks like you are so into these gray buttons. How about I just let you push it.                ";
String ntv10 = "...if you can catch it.";
String ntv11 = "Look how slow you are, Mr.Smith.                       Alright, alright, alright. I'll set it steady for you.";
String ntv11a= "Oh no, it's actually a red button. You know you don't have much choice right? Mr. Smith.";
String ntv12 = "It's just like your life, Mr.Smith. You are angry, you are afraid, and you want to quit.                It's ok, just click the exit button on the top left. But remember, that is also a red button.";
void setup() {
  size (500, 500);
  background (0);
  xPosition = width/2;
  yPosition = height/2;
  frameRate(12);
  smooth();
  f = createFont("Dosis-Regular.ttf",24);
  textFont(f);
  file = new SoundFile(this, "/Users/Jingquan/Desktop/All is well with Mr. Smith/Smith/bgm.mp3");
  file.loop();
  title = loadImage("Title.png");
  image(title, 0, 0); 
  ending1 = loadImage("illuminati.jpg");
  ending2 = loadImage("arrow.png");
}

void draw() {
  if (key == ' ' && stage == 0) {           //Opening scene 1 trigger
    background(0); //<>//
    fill(255);    
    typewritentv1();
  }
  if (counter1 >= ntv1. length()){          //Opening button press standby
    stage = 1;
    fill(255, 0, 0);
    noStroke();
    ellipse(width/3, 300, 30, 30);
    fill(40, 40, 40);
    ellipse(width/2, 300, 30, 30);
    fill(80, 80, 80);
    ellipse(width*2/3, 300, 30, 30);
    counter1 = 0;
  }
  
  //Opening 1 press red
  if (stage == 1 && mouseButton == LEFT && mouseX <= width/3+15 && mouseX >=width/3-15 && mouseY <= 315 && mouseY >= 285) {
    stage = 2;
  }
  
  //Opening 1 pressed button2 & button3
  else if(stage == 1 && mouseButton == LEFT && mouseX <= width/2+15 && mouseX >=width/2-15 && mouseY <= 315 && mouseY >= 285){
    stage = 20;
  }
  else if(stage == 1 && mouseButton == LEFT && mouseX <= width*2/3+15 && mouseX >=width*2/3-15 && mouseY <= 315 && mouseY >= 285){
    stage = 20;
  }
  
  //scene 1 button 2&3 consequence
  if (stage ==20){
    if (doonce == true){
      clock = millis();
      doonce = false;
    }
    background(0);
    fill(255);
    typewritentv5();
  }
  

  
  if (counter5 >= ntv5. length()){
    stage = 21;   
    counter5 = 0;
  }
  
  if (stage == 21 && millis() - clock > 15000) {
    stage = 22;
  }
  
  if (stage == 22){
    counter5a = 0;
    background(0);
   typewritentv6();
  }
  
  //scene 3Red Button
  if (counter6 >= ntv6.length()){ 
    fill(255, 0, 0);
    ellipse(width/3, 300, 30, 30);
    ellipse(width/2, 300, 30, 30);
    ellipse(width*2/3, 300, 30, 30);
    stage = 23;
    counter6 = 0;    
  }
  
  if (stage == 23 && mouseButton == LEFT && mouseX <= width/3+15 && mouseX >=width/3-15 && mouseY <= 315 && mouseY >= 285) {
    stage = 24;
  }else if(stage == 23 && mouseButton == LEFT && mouseX <= width/2+15 && mouseX >=width/2-15 && mouseY <= 315 && mouseY >= 285){
    stage = 24;
  }else if(stage == 23 && mouseButton == LEFT && mouseX <= width*2/3+15 && mouseX >=width*2/3-15 && mouseY <= 315 && mouseY >= 285){
    stage = 24;
  }
  
  if (stage == 24){
    background(0);
    fill(255);
    stage = 25;
    doonce = true;
  }
  
  if (stage == 25){
    background(0);
    typewritentv7();
    if (doonce == true){
      clock = millis();
      doonce = false;
    }
  }
  
  if (counter7 >= ntv7.length() && millis() - clock > 5000){
    stage = 26;
    counter7 = 0;
  }
  if (stage == 26){
    background(0);
    typewritentv8();
  }
  
  if (counter8 >= ntv8.length()){
    counter8 = 0;
    stage = 27;
    fill(255, 0, 0);
    ellipse(width/3, 300, 30, 30);
    fill(80, 80, 80);
    ellipse(width*2/3, 300, 30, 30);
  }
  
  if (stage == 27 && mouseButton == LEFT && mouseX <= width/3+15 && mouseX >=width/3-15 && mouseY <= 315 && mouseY >= 285) {
    stage = 2;
  }
  if (stage == 27 && mouseButton == LEFT && mouseX <= width*2/3+15 && mouseX >=width*2/3-15 && mouseY <= 315 && mouseY >= 285) {
    stage = 30;
  }
  ///////////////////////////////////META GAME  
  if (stage == 30){
    background(0);
    fill(255, 0, 0);
    stage = 31;
  }
  if (stage == 31){
    background(0);
    typewritentv9();
  }
  
  if (counter9 >= ntv9.length()){
    counter9 = 0;
    stage = 32;
    background(0);
    
  }
  
  if (stage == 32){
    background(0);
    typewritentv10(); 
  }
  
  if (counter10 >= ntv10.length()){
    println("33");
    background(0);
    counter10 = 0;
    stage = 33;
    doonce = true;
  }
  if (stage == 33){
    frameRate(60);
    background(0);
    fill(80, 80, 80);
    ellipse(xPosition, yPosition, 30, 30);  
      if (yPosition >= height) {
          ys = ys * -3;
      } else if (yPosition <= 0) {
          ys = ys * -3;
      }
      yPosition = yPosition + ys;
      
      if (xPosition >= width) {
          xs = xs * -3;
      } else if (xPosition <= 0) {
          xs = xs * -3;
      }
      xPosition = xPosition + xs;
      if (doonce == true) {
        clock = millis();
        doonce = false;
      }
  }
  
  if (stage == 33 && millis() - clock > 5000){
    stage = 34;
    frameRate(12);
    background(0);
  }
  
  if (stage == 34){
    background(0);
    fill(255);
    typewritentv11();
  }
  if (counter11 >= ntv11.length()){
    counter11 = 0;
    stage = 35;
    fill(80, 80, 80);
    ellipse(width/2, 300, 30, 30);
  }

  if (stage == 35 && mouseX <= width/2+40 && mouseX >= width/2-40 && mouseY <= 340 && mouseY >= 260){
    background(0);
    fill(255, 0, 0);
    ellipse(width/2, 300, 30, 30);
    fill(255);
    text(ntv11a, 20, 80, 460, 250);
    stage = 36;
  }
  
  if (stage == 36 && mouseButton == LEFT && mouseX <= width/2+15 && mouseX >= width/2-15 && mouseY <= 315 && mouseY >= 285){
      background(0);
      stage = 37;
  }
  
  if (stage == 37){
    background(0);
    typewritentv12();
    image(ending2, 0, 0); 
  }

 
  
  ///////////////////////////////////META GAME OVER
  //RED scene 2
  if (stage == 2){
    background(0);
    fill(255);
    typewritentv2();
  }
  
  //RED scene2 button standby
  if (counter2 >= ntv2.length()){
    fill(255, 0, 0);
    ellipse(width/2, 300, 30, 30);
    fill(255);
    text (ntv2a, 20, 400, 460, 250);
    stage = 3;
    counter2 = 0;
  }
  //scene 3
  if (stage == 3 && mouseButton == LEFT && mouseX <= width/2+15 && mouseX >=width/2-15 && mouseY <= 315 && mouseY >= 285) {
    stage = 4;
  }
  if (stage == 4) {
    background(0);
    fill(255);
    typewritentv3();
  }
  //scene3 buttons standby
   if (counter3 >= ntv3.length()){
   fill(255, 0, 0);
   ellipse(width/3, 300, 30, 30);
   fill(80, 80, 80);
   ellipse(width*2/3, 300, 30, 30);
   stage = 5;
   counter3 = 0;
  }
  
  if (stage == 5 && mouseButton == LEFT && mouseX <= width/3+15 && mouseX >=width/3-15 && mouseY <= 315 && mouseY >= 285){
   stage = 6;
  }
  if (stage == 5 && mouseButton == LEFT && mouseX <= width*2/3+15 && mouseX >=width*2/3-15 && mouseY <= 315 && mouseY >= 285){
   stage = 20;
  }
  
  if (stage == 6){
   background(0);
   fill(255);
   typewritentv4();
  }
  
  if(counter4 >= ntv4.length()){
    stage = 7;
    fill(255, 0, 0);
    ellipse(width/2, 300, 30, 30);
  }
  
  if(stage == 7 && mouseButton == LEFT && mouseX <= width/2+15 && mouseX >=width/2-15 && mouseY <= 315 && mouseY >= 285){
    stage = 8;
  }
  
  if (stage == 8){
    text(ntv4a, 20, bby);
    bby = bby + 20;
    println("BB");
  }
  
  if(bby > 400){
    println("400");
   image(ending1, 0, 0);
   file = new SoundFile(this, "/Users/Jingquan/Desktop/All is well with Mr. Smith/Smith/ending1.wav");
   file.loop();
  }
  if(bby > 440){
    exit();
  }
}




//TYPEWRITTERS

void typewritentv1(){                     //narrative typewritter1
  if(counter1 < ntv1.length()){
  counter1++;
  }
 text (ntv1.substring(0, counter1), 20, 80, 460, 250);
  }
  
void typewritentv2(){                     //narrative typewritter2
  if(counter2 < ntv2.length()){
  counter2++;
  }
 text (ntv2.substring(0, counter2), 20, 80, 460, 250);
  }
  
void typewritentv3(){                     //narrative typewritter3
  if(counter3 < ntv3.length()){
  counter3++;
  }
 text (ntv3.substring(0, counter3), 20, 80, 460, 250);
  }

void typewritentv4(){                     //narrative typewritter4
  if(counter4 < ntv4.length()){
  counter4++;
  }
 text (ntv4.substring(0, counter4), 20, 80, 460, 250);
  }

void typewritentv5(){                     //narrative typewritter5
  if(counter5 < ntv5.length()){
  counter5++;
  }
 text (ntv5.substring(0, counter5), 20, 80, 460, 250);
  }
  
void typewritentv5a(){                     //narrative typewritter5a
  if(counter5a < ntv5a.length()){
  counter5a++;
  }
 text (ntv5a.substring(0, counter5a), 20, 400, 460, 250);
  }
  
void typewritentv6(){                     //narrative typewritter6
  if(counter6 < ntv6.length()){
  counter6++;
  }
 text (ntv6.substring(0, counter6), 20, 80, 460, 250);
  }
  
void typewritentv7(){                     //narrative typewritter7
  if(counter7 < ntv7.length()){
  counter7++;
  }
 text (ntv7.substring(0, counter7), 20, 80, 460, 250);
  }
  
void typewritentv8(){                     //narrative typewritter8
  if(counter8 < ntv8.length()){
  counter8++;
  }
 text (ntv8.substring(0, counter8), 20, 80, 460, 250);
  }
 
void typewritentv9(){                     //narrative typewritter9
  if(counter9 < ntv9.length()){
  counter9++;
  }
 text (ntv9.substring(0, counter9), 20, 80, 460, 250);
  }
  
void typewritentv10(){                     //narrative typewritter10
  if(counter10 < ntv10.length()){
  counter10++;
  }
 text (ntv10.substring(0, counter10), 20, 250, 460, 250);
  }  
  
void typewritentv11(){                     //narrative typewritter11
  if(counter11 < ntv11.length()){
  counter11++;
  }
 text (ntv11.substring(0, counter11), 20, 80, 460, 250);
  } 
  
void typewritentv12(){                     //narrative typewritter12
  if(counter12 < ntv12.length()){
  counter12++;
  }
 text (ntv12.substring(0, counter12), 20, 250, 460, 250);
  }    