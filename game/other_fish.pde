void drawBig() {
  //big fish images
  if (difficulty == 1) {
    shark = shark1;
    for (int i = 0; i < Xbig1.length; i++) {
      image(shark, Xbig1[i], Ybig1[i], wwid*24, hhei*12);
    }
  } else if (difficulty == 2) {
    shark = shark3;
    for (int i = 0; i < Xbig2.length; i++) {
      image(shark, Xbig2[i], Ybig2[i], wwid*24, hhei*12);
    }
  }

  float bigSpeed;
  int bigVert = 7;
  if (difficulty == 1) {  //difficulty is EASY
    bigSpeed = wwid*0.6;
    for (int i = 0; i < Xbig1.length; i++) {
      Xbig1[i] = Xbig1[i]-bigSpeed;
      if (Xbig1[i] <= -wwid*24) {
        Xbig1[i] = width+random(wwid*30, wwid*50)*(i+1);
        Ybig1[i] = random(statusWidth*1.5, height-hhei*12);
      }
    }
  } else if (difficulty == 2) {  //difficulty is HARD
    bigSpeed = wwid*1.8;
    for (int i = 0; i < Xbig2.length; i++) {
      Xbig2[i] = Xbig2[i]-bigSpeed;
      if (Ybig2[i]-random(-bigVert, bigVert) < statusWidth*1.5) {
        Ybig2[i] = Ybig2[i]+random(0, bigVert);
      } else if (Ybig2[i]-random(-bigVert, bigVert) > height-hhei*12) {
        Ybig2[i] = Ybig2[i]-random(0, bigVert);
      } else {
        Ybig2[i] = Ybig2[i]-random(-bigVert, bigVert);
      }
      if (Xbig2[i] <= -wwid*24) {
        Xbig2[i] = width+random(wwid*20, wwid*60)*(i+1);
        Ybig2[i] = random(statusWidth*1.5, height-hhei*12);
      }
    }
  }
}

void drawSmall1() {
  //small fish1 image
  float smallSpeed;
  for (int i = 0; i < Xsmall.length; i++) {
    image(Sfish, Xsmall[i], Ysmall[i], wwid*3, hhei*2.25);
  }
  if (difficulty == 1) {
    smallSpeed = wwid*0.8;
    for (int i = 0; i < Xsmall.length; i++) {
      Xsmall[i] = Xsmall[i] - smallSpeed;
      if (Xsmall[i] <= -wwid*3) {
        Xsmall[i] = width+random(wwid*5, wwid*10)*(i+1);
        Ysmall[i] = random(statusWidth*1.5, height-hhei*2.25);
      }
    }
  } else if (difficulty == 2) {
    smallSpeed = wwid*1.6;
    for (int i = 0; i < Xsmall.length; i++) {
      Xsmall[i] = Xsmall[i] - smallSpeed;
      if (Xsmall[i] <= -wwid*3) {
        Xsmall[i] = width+random(wwid*5, wwid*10)*(i+1);
        Ysmall[i] = random(statusWidth*1.5, height-hhei*2.25);
      }
    }
  }
}

void drawSmall2() {
  //small fish2 image
  float smallSpeed1;
  if (difficulty == 1) {
    smallSpeed1 = wwid*0.75;
    for (int i = 0; i < Xsmall1.length; i++) {
      image(big1, Xsmall1[i], Ysmall1[i], wwid*10, hhei*6);
      Xsmall1[i] = Xsmall1[i] - smallSpeed1;
      if (Xsmall1[i] <= -wwid*10) {
        Xsmall1[i] = width+random(wwid*10, wwid*15)*(i+1);
        Ysmall1[i] = random(statusWidth*1.5, height-hhei*6);
      }
    }
  } else if (difficulty == 2) {
    smallSpeed1 = wwid*1.5;
    for (int i = 0; i < Xsmall12.length; i++) {
      image(big1, Xsmall12[i], Ysmall12[i], wwid*10, hhei*6);
      Xsmall12[i] = Xsmall12[i] - smallSpeed1;
      if (Xsmall12[i] <= -wwid*10) {
        Xsmall12[i] = width+random(wwid*10, wwid*15)*(i+1);
        Ysmall12[i] = random(statusWidth*1.5, height-hhei*6);
      }
    }
  }
}

void drawSmall3() {
  //small fish3 image
  float smallSpeed2;
  if (difficulty == 1) {
    smallSpeed2 = wwid*0.7;
    for (int i = 0; i < Xsmall2.length; i++) {
      image(big3, Xsmall2[i], Ysmall2[i], wwid*15, hhei*10);
      Xsmall2[i] = Xsmall2[i] - smallSpeed2;
      if (Xsmall2[i] <= -wwid*15) {
        Xsmall2[i] = width+random(wwid*40, wwid*60)*(i+1);
        Ysmall2[i] = random(statusWidth*1.5, height-hhei*10);
      }
    }
  } else if (difficulty == 2) {
    smallSpeed2 = wwid*1.4;
    for (int i = 0; i < Xsmall22.length; i++) {
      image(big3, Xsmall22[i], Ysmall22[i], wwid*15, hhei*10);
      Xsmall22[i] = Xsmall22[i] - smallSpeed2;
      if (Xsmall22[i] <= -wwid*15) {
        Xsmall22[i] = width+random(wwid*40, wwid*50)*(i+1);
        Ysmall22[i] = random(statusWidth*1.5, height-hhei*10);
      }
    }
  }
}
