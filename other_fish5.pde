void drawBig() {
  // big fish images
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

  float bigSpeed = 0;
  int bigVert = 7;
  if (difficulty == 1) {  //difficulty is EASY
    bigSpeed = wwid*0.6;
    for (int i = 0; i < Xbig1.length; i++) {
      Xbig1[i] = Xbig1[i]-bigSpeed;
      if (Xbig1[i] <= -wwid*24) {
        Xbig1[i] = width+random(wwid*5*i, hhei*10*i);
        Ybig1[i] = random(fishHeight*1.5, height-hhei*12);
      }
    }
  } else if (difficulty == 2) {  //difficulty is HARD
    bigSpeed = wwid*1.3;
    for (int i = 0; i < Xbig2.length; i++) {
      Xbig2[i] = Xbig2[i]-bigSpeed;
      Ybig2[i] = Ybig2[i]-random(-bigVert, bigVert);
      if (Xbig2[i] <= -wwid*24) {
        Xbig2[i] = width+random(wwid*5*i, hhei*10*i);
        Ybig2[i] = random(fishHeight*1.5, height-hhei*12);
      }
    }
  }
}


void drawSmall1() {
  //small fish1 image
  for (int i = 0; i < Xsmall.length; i++) {
    image(Sfish, Xsmall[i], Ysmall[i], wwid*3, hhei*2.25);
  }

  float smallSpeed;
  if (difficulty == 1) {
    smallSpeed = wwid*0.8;
    for (int i = 0; i < Xsmall.length; i++) {
      Xsmall[i] = Xsmall[i] - smallSpeed;
      if (Xsmall[i] <= -wwid*3) {
        Xsmall[i] = width+random(wwid*5*i, wwid*6*i);
        Ysmall[i] = random(fishHeight*1.5, height-hhei*2.25);
      }
    }
  } else if (difficulty == 2) {
    smallSpeed = wwid*1.6;
    for (int i = 0; i < Xsmall.length; i++) {
      Xsmall[i] = Xsmall[i] - smallSpeed;
      if (Xsmall[i] <= -wwid*3) {
        Xsmall[i] = width+random(wwid*5*i, wwid*6*i);
        Ysmall[i] = random(fishHeight*1.5, height-hhei*2.25);
      }
    }
  }
}

void drawSmall2() {
  //small fish2 image
  for (int i = 0; i < Xsmall1.length; i++) {
    image(big1, Xsmall1[i], Ysmall1[i], wwid*10, hhei*6);
  }

  float smallSpeed1;
  if (difficulty == 1) {
    smallSpeed1 = wwid*0.75;
    for (int i = 0; i < Xsmall1.length; i++) {
      Xsmall1[i] = Xsmall1[i] - smallSpeed1;
      if (Xsmall1[i] <= -wwid*10) {
        Xsmall1[i] = width+random(wwid*7*i, wwid*8*i);
        Ysmall1[i] = random(fishHeight*1.5, height-hhei*6);
      }
    }
  } else if (difficulty == 2) {
    smallSpeed1 = wwid*1.5;
    for (int i = 0; i < Xsmall1.length; i++) {
      Xsmall1[i] = Xsmall1[i] - smallSpeed1;
      if (Xsmall1[i] <= -wwid*10) {
        Xsmall1[i] = width+random(wwid*7*i, wwid*8*i);
        Ysmall1[i] = random(fishHeight*1.5, height-hhei*6);
      }
    }
  }
}

void drawSmall3() {
  //small fish3 image
  for (int i = 0; i < Xsmall2.length; i++) {
    image(big3, Xsmall2[i], Ysmall2[i], wwid*15, hhei*10);
  }

  float smallSpeed2;
  if (difficulty == 1) {
    smallSpeed2 = wwid*0.7;
    for (int i = 0; i < Xsmall2.length; i++) {
      Xsmall2[i] = Xsmall2[i] - smallSpeed2;
      if (Xsmall2[i] <= -wwid*15) {
        Xsmall2[i] = width+random(wwid*7*i, wwid*8*i);
        Ysmall2[i] = random(fishHeight*1.5, height-hhei*12);
      }
    }
  } else if (difficulty == 2) {
    smallSpeed2 = wwid*1.4;
    for (int i = 0; i < Xsmall2.length; i++) {
      Xsmall2[i] = Xsmall2[i] - smallSpeed2;
      if (Xsmall2[i] <= -wwid*15) {
        Xsmall2[i] = width+random(wwid*7*i, wwid*8*i);
        Ysmall2[i] = random(fishHeight*1.5, height-hhei*12);
      }
    }
  }
}
