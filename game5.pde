//size values
float wwid;
float hhei;

//button location
float buttonH;
float buttonUp1;
float buttonDown1;
float buttonUp2;
float buttonDown2;
float buttonUp3;
float buttonDown3;
float buttonUp4;
float buttonDown4;

//button interaction display
int opacityS;
int opacityT;
int opacityE;
int opacityR;
int opacityX;
int opacityU;

float fishWidth;  // variable size of fish
float fishHeight;
int fishType; // Fish is facing right if 1, left if 2

int order = 0;  // Pages (0 = start page, 1 =  
int conPage = 0; // game over screen
int difficulty = 1;  // difficulty of game
String Difficulty;
int clickNumber = 0;  //mouse operation times in start page and setting page

int score = 0;
int[] scoreSize = new int[11];
float percentage;
int level = 1;

//variables of random bigger or smaller fish moving location
float Xlocation;
float Ylocation;

//big fish - change fish amount
float[] Xbig1 = new float[2];  //shark1
float[] Ybig1 = new float[2];
float[] Xbig2 = new float[7];  //shark2
float[] Ybig2 = new float[7];

//small fish - change fish amount
float[] Xsmall = new float[4];  //Sfish
float[] Ysmall = new float[4];
float[] Xsmall1 = new float[3];  //big1-2
float[] Ysmall1 = new float[3];
float[] Xsmall2 = new float[3];  //big3-4
float[] Ysmall2 = new float[3];

//images
PImage background;
PImage background1;
PImage intro;
PImage fish;  //original player fish
PImage fish1;  //original player fish - turn left
PImage fish2;  //death fish
PImage fish3;  //death fish - turn left

PImage shark;
PImage shark1;
PImage shark2;
PImage shark3;
PImage shark4;

PImage Sfish;
PImage Sfish1;

PImage big1;
PImage big2;
PImage big3;
PImage big4;

PFont myFont;  //Font 

int pauseNumber = 0;
int pauseType;
void setup() {
  size(888, 666);
  //Fonts
  myFont = createFont("font.ttf", 50);

  textFont(myFont);
  wwid = width*0.0125;
  hhei = height*0.01667;
  //change fishSize
  fishWidth = wwid*8;
  fishHeight = hhei*5;

  //scoreSize
  for (int i = 1; i < 11; i++) {
    scoreSize[i] = i*i*200-i*100; 
    println(scoreSize[i]);
  }

  //big fish moving initialisation
  for (int i = 0; i < Xbig1.length; i++) {
    Xbig1[i] = width+random(wwid*5*i, hhei*10*i);
    Ybig1[i] = random(fishHeight*1.5, height-hhei*12);
  }
  for (int i = 0; i < Xbig2.length; i++) {
    Xbig2[i] = width+random(wwid*5*i, hhei*10*i);
    Ybig2[i] = random(fishHeight*1.5, height-hhei*12);
  }

  //small fish moving initialisation
  for (int i = 0; i < Xsmall.length; i++) {
    Xsmall[i] = width+random(wwid*5*i, wwid*6*i);
    Ysmall[i] = random(fishHeight*1.5, height-hhei*2.25);
  }

  for (int i = 0; i < Xsmall1.length; i++) {
    Xsmall1[i] = width+random(wwid*2*i, wwid*4*i);
    Ysmall1[i] = random(fishHeight*1.5, height-hhei*6);
  }

  for (int i = 0; i < Xsmall2.length; i++) {
    Xsmall2[i] = width+random(wwid*5*i, wwid*6*i);
    Ysmall2[i] = random(fishHeight*1.5, height-hhei*10);
  }

  background = loadImage("background.png");
  background1 = loadImage("background1.png");
  intro = loadImage("introduction.png");  //introduction image
  fish = loadImage("fish.png");
  fish1 = loadImage("fish1.png");

  fish2 = loadImage("fish2.png");
  fish3 = loadImage("fish3.png");

  big1 = loadImage("fish9.png");
  big2 = loadImage("fish10.png");

  big3 = loadImage("fish11.png");
  big4 = loadImage("fish12.png");

  shark1 = loadImage("shark1.png");
  shark2 = loadImage("shark2.png");

  shark3 = loadImage("shark3.png");
  shark4 = loadImage("shark4.png");

  Sfish = loadImage("fish4.png");
  Sfish1 = loadImage("fish5.png");
}

void draw() {
  noStroke();
  image(background, 0, 0, width, height);
  interaction();
  changePage();
  addScore();
  death();
  if (score >= 19000) {
    success();  //congratulation page
  }

  //testing! - need to be deleted
  stroke(0);
  //original fish size
  line(mouseX, Ylocation, mouseX, Ylocation+fishHeight);
  line(Xlocation, mouseY, Xlocation+fishWidth, mouseY);
}

void changePage() {
  if (order == 0) {  //original start page
    score = 0;
    level = 0;
    conPage = 0;
    startPage();
    drawOriginalFish();
  } else if (order == 1) {  //start game
    image(background1, 0, 0, width, height);
    statusBar();
    drawBig();
    drawSmall1();
    drawSmall2();
    drawSmall3();
    drawOriginalFish();
  } else if (order == 2) {  //setting page
    image(background, 0, 0, width, height);
    score = 0;
    level = 0;
    settingPage();
    drawOriginalFish();
  } else if (order == 3) {  //over page
    image(background, 0, 0, width, height);
    overPage();
    drawOriginalFish();
  } else if (order == 4) {  //instruction page
    image(background, 0, 0, width, height);
    image(intro, -wwid, -hhei*9, wwid*82, hhei*76);
    fill(0);
    textAlign(LEFT);
    String[] lines = loadStrings("game instruction.txt");
    for (int i = 0; i < lines.length; i++) {
      if (i == 0) {
        textSize(wwid*3.3);
      } else {
        textSize(wwid*3);
      }
      text(lines[i], wwid*11, hhei*10+i*hhei*4);
    }
    fill(255, opacityU);
    rect(wwid*65, hhei*50, wwid*12, hhei*4);  //return button
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(wwid*3);
    text("RETURN", wwid*71, hhei*51.5);
    drawOriginalFish();
  }
}

void mouseClicked() {
  if (mouseX>wwid*30 && mouseX<wwid*50 && mouseY>buttonUp1 && mouseY<buttonDown1 && order!=1 && order<3) {
    clickNumber++;
    if (clickNumber == 1) {  //start game & original difficulty is EASY
      difficulty = 1;
      Difficulty = "EASY";
      order = 1;
    } else if (clickNumber%2 == 0) {  //change difficulty into EASY in setting page
      difficulty = 1;
      Difficulty = "EASY";
      order = 0;
    } else {  //start game
      order = 1;
      Reset();
    }
  } else if (mouseX>wwid*30 && mouseX<wwid*50 && mouseY>buttonUp2 && mouseY<buttonDown2 && order!=1 && order<3) {
    clickNumber++;
    if (clickNumber%2 == 0) {  //change difficulty into HARD in setting page
      difficulty = 2;
      Difficulty = "HARD";
      order = 0;
    } else {  //entry setting page
      order = 2;
    }
  } else if (mouseX>wwid*30 && mouseX<wwid*50 && mouseY>buttonUp3 && mouseY<buttonDown3 && order==2) {
    clickNumber++;
    if (clickNumber%2 == 0) {  //see instruction of game in setting page
      order = 4;
    } else {  //exit
      exit();
    }
  }

  if (mouseX>wwid*30 && mouseX<wwid*50 && mouseY>buttonUp2 && mouseY<buttonDown2 && order==1 && conPage==1) {
    clickNumber++;  //RESTART buttion
    order = 0;
    difficulty = 1;
  } else if (mouseX>wwid*30 && mouseX<wwid*50 && mouseY>buttonUp3 && mouseY<buttonDown3 && (order == 0 || order == 1 || order == 3 || conPage == 1)) {
    exit();  //EXIT button
  }

  if (mouseX>wwid*30 && mouseX<wwid*50 && mouseY>buttonUp2 && mouseY<buttonDown2 && order==3) {
    clickNumber++;  //RESTART buttion
    order = 0;
    difficulty = 1;
  } 
  
  if (mouseX>wwid*65 && mouseX<wwid*77 && mouseY>hhei*50 && mouseY<hhei*54 && order == 4) {
    clickNumber++;
    order = 2;
  }
  println("o:", order, "  d:", difficulty, "  c:", clickNumber);  //test! need to be deleted
}

void startPage() {  //order = 0
  //change the button height
  buttonH = hhei*5;
  //change button locations
  buttonUp1 = hhei*28;
  buttonDown1 = buttonUp1+buttonH;
  buttonUp2 = hhei*35;
  buttonDown2 = buttonUp2+buttonH;
  buttonUp3 = hhei*42;
  buttonDown3 = buttonUp3+buttonH;

  fill(255);
  textSize(wwid*10);
  fill(0);
  textAlign(CENTER, CENTER);
  text("LITTLE", width/2, hhei*7);
  text("FEEDING FRENZY", width/2, hhei*15);

  fill(255, opacityS);
  rect(wwid*30, buttonUp1, wwid*20, buttonH);  //start button
  fill(0);
  textSize(wwid*3.5);
  text("START", wwid*40, hhei*30);

  fill(255, opacityT);
  rect(wwid*30, buttonUp2, wwid*20, buttonH);  //setting button
  fill(0);
  textSize(wwid*3.5);
  text("SETTING", wwid*40, hhei*37);

  fill(255, opacityE);
  rect(wwid*30, buttonUp3, wwid*20, buttonH);  //exit buttion
  fill(0);
  textSize(wwid*3.5);
  text("EXIT", wwid*40, hhei*44);

  //display difficulties
  textSize(wwid*3);
  if (difficulty == 1) {
    text("EASY", wwid*65, hhei*22.5);
  } else {
    text("HARD", wwid*65, hhei*22.5);
  }
}

void settingPage() {  //order = 2
  fill(255);
  fill(0);
  textSize(wwid*10);
  textAlign(CENTER, CENTER);
  text("LITTLE", width/2, hhei*7);
  text("FEEDING FRENZY", width/2, hhei*15);

  fill(255, opacityS);
  rect(wwid*30, buttonUp1, wwid*20, buttonH);  //easy button
  fill(0);
  textSize(wwid*3.5);
  text("EASY", wwid*40, hhei*30);

  fill(255, opacityT);
  rect(wwid*30, buttonUp2, wwid*20, buttonH);  //hard button
  fill(0);
  textSize(wwid*3.5);
  text("HARD", wwid*40, hhei*37);

  fill(255, opacityE);
  rect(wwid*30, buttonUp3, wwid*20, buttonH);  //instruction buttion
  fill(0);
  textSize(wwid*3.5);
  text("INSTRUCTION", wwid*40, hhei*44);
}

void overPage() {  //order = 4
  fill(0);
  textSize(wwid*10);
  textAlign(CENTER, CENTER);
  text("GAME OVER", width/2, hhei*12.5);

  textSize(wwid*5);
  text("SCORE: "+score, width/2, hhei*25);

  fill(255, opacityR);
  rect(wwid*30, buttonUp2, wwid*20, buttonH);  //restart button
  fill(0);
  textSize(wwid*3.5);
  text("RESTART", wwid*40, hhei*37);

  fill(255, opacityX);
  rect(wwid*30, buttonUp3, wwid*20, buttonH);  //exit buttion
  fill(0);
  textSize(wwid*3.5);
  text("EXIT", wwid*40, hhei*44);
}

void statusBar() {
  fill(0, 255, 255, 100);
  rect(0, 0, width, fishHeight*1.5);
  fill(0);
  textAlign(LEFT, CENTER);
  textSize(wwid*3.5);
  text(Difficulty, wwid*2, fishHeight*0.65);  //difficulty
  text("Score: "+score, wwid*12, fishHeight*0.65);  //scores
  if (level <10) {
    text("Lv."+level, wwid*67, fishHeight*0.65);  //level
  } else {
    text("Lv."+"MAX", wwid*67, fishHeight*0.65);  //level
  }
  triangle(wwid*33, fishHeight*1.1, wwid*33-wwid*0.2, fishHeight*1.3, wwid*33+wwid*0.2, fishHeight*1.3);
  image(Sfish1, wwid*33, fishHeight*0.455, wwid*2.25, hhei*1.65);
  triangle(wwid*33+wwid*31*4500/19000, fishHeight*1.1, wwid*33+wwid*31*4500/19000-wwid*0.2, fishHeight*1.3, wwid*33+wwid*31*4500/19000+wwid*0.2, fishHeight*1.3);
  image(big2, wwid*33+wwid*31*4500/19000, fishHeight*0.42, wwid*3, hhei*1.8);
  triangle(wwid*33+wwid*31*9100/19000, fishHeight*1.1, wwid*33+wwid*31*9100/19000-wwid*0.2, fishHeight*1.3, wwid*33+wwid*31*9100/19000+wwid*0.2, fishHeight*1.3);
  image(big4, wwid*33+wwid*31*9100/19000, fishHeight*0.37, wwid*3, hhei*2.3);
  triangle(wwid*33+wwid*31*15300/19000, fishHeight*1.1, wwid*33+wwid*31*15300/19000-wwid*0.2, fishHeight*1.3, wwid*33+wwid*31*15300/19000+wwid*0.2, fishHeight*1.3);
  if (difficulty == 1) {
    image(shark2, wwid*33+wwid*31*15300/19000, fishHeight*0.4, wwid*3, hhei*2);
  } else if (difficulty == 2) {
    image(shark4, wwid*33+wwid*31*15300/19000, fishHeight*0.44, wwid*3, hhei*2);
  }

  fill(255);
  rect(wwid*33, fishHeight*0.9, wwid*31, fishHeight*0.2);
  fill(0, 0, 255, 80);
  rect(wwid*33, fishHeight*0.9, percentage*wwid*31, fishHeight*0.2);
}

void interaction() {
  if (order == 0 || order == 2) {
    if (mouseX>wwid*30 && mouseX<wwid*50 && mouseY>buttonUp1 && mouseY<buttonDown1) {
      opacityS = 100;
    } else {
      opacityS = 210;
    }
    if (mouseX>wwid*30 && mouseX<wwid*50 && mouseY>buttonUp2 && mouseY<buttonDown2) {
      opacityT = 100;
    } else {
      opacityT = 210;
    }
    if (mouseX>wwid*30 && mouseX<wwid*50 && mouseY>buttonUp3 && mouseY<buttonDown3) {
      opacityE = 100;
    } else {
      opacityE = 210;
    }
  }

  if (order == 1 && conPage == 1) {
    if (mouseX>wwid*30 && mouseX<wwid*50 && mouseY>buttonUp2 && mouseY<buttonDown2) {
      opacityR = 100;
    } else {
      opacityR = 210;
    }
    if (mouseX>wwid*30 && mouseX<wwid*50 && mouseY>buttonUp3 && mouseY<buttonDown3) {
      opacityX = 100;
    } else {
      opacityX = 210;
    }
  }
  if (order == 3) {
    if (mouseX>wwid*30 && mouseX<wwid*50 && mouseY>buttonUp2 && mouseY<buttonDown2) {
      opacityR = 100;
    } else {
      opacityR = 210;
    }
    if (mouseX>wwid*30 && mouseX<wwid*50 && mouseY>buttonUp3 && mouseY<buttonDown3) {
      opacityX = 100;
    } else {
      opacityX = 210;
    }
  }

  if (order == 4) {
    if (mouseX>wwid*65 && mouseX<wwid*77 && mouseY>hhei*50 && mouseY<hhei*54) {
      opacityU = 100;
    } else {
      opacityU = 210;
    }
  }
}

void success() {
  conPage = 1;
  fill(255);
  textSize(wwid*9.5);
  textAlign(CENTER, CENTER);
  text("CONGRATULATIONS!", width/2, hhei*12.5);

  textSize(wwid*5);
  text("SCORE: "+score, width/2, hhei*25);

  fill(255, opacityR);
  rect(wwid*30, buttonUp2, wwid*20, buttonH);  //restart button
  fill(0);
  textSize(wwid*3.5);
  text("RESTART", wwid*40, hhei*37);

  fill(255, opacityX);
  rect(wwid*30, buttonUp3, wwid*20, buttonH);  //exit buttion
  fill(0);
  textSize(wwid*3.5);
  text("EXIT", wwid*40, hhei*44);
}

void keyPressed() {  //end game during play
  if (keyCode == ENTER) {
    if (order == 1 && conPage == 0) {
      order = 3;
    }
  }
}
