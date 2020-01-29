void drawBig() {
  // big fish images
  if (difficulty == 1) {
    for (int i = 0; i < XGood.length; i++) {
      image(shark1, XGood[i], YGood[i], wwid*24, hhei*12);
    }
  } else if (difficulty == 2) {
    for (int i = 0; i < XEvil.length; i++) {
      image(shark3, XEvil[i], YEvil[i], wwid*24, hhei*12);
    }
  }
  // How fast should shark move horizontally?
  float bigSpeed = 0;
  
  // How fast should shark move vertically? (HARD difficulty only)
  int bigVert = 7;
  
  if (difficulty == 1) {  //difficulty is EASY
    bigSpeed = wwid*0.3;
    for (int i = 0; i < XGood.length; i++) {
      XGood[i] = XGood[i]-bigSpeed;
      if (XGood[i] <= -wwid*24) {
        XGood[i] = width+random(wwid*5*i, hhei*10*i);
        YGood[i] = random(fishHeight*1.5, height-hhei*12);
      }
    }
  } else if (difficulty == 2) {  //difficulty is HARD
    bigSpeed = wwid*0.3;
    for (int i = 0; i < XEvil.length; i++) {
      XEvil[i] = XEvil[i]-bigSpeed;
      YEvil[i] = YEvil[i]-random(-bigVert, bigVert);
      if (XEvil[i] <= -wwid*24) {
        XEvil[i] = width+random(wwid*5*i, hhei*10*i);
        YEvil[i] = random(fishHeight*1.5, height-hhei*12);
      }
    }
  }
}


void drawYellow() {
  //Small fish1 image
  for (int i = 0; i < XSmall.length; i++) {
    image(Sfish, XSmall[i], YSmall[i], wwid*3, hhei*2.25);
  }

  float SmallSpeed;
  if (difficulty == 1) {
    SmallSpeed = wwid*0.8;
    for (int i = 0; i < XSmall.length; i++) {
      XSmall[i] = XSmall[i] - SmallSpeed;
      if (XSmall[i] <= -wwid*3) {
        XSmall[i] = width+random(wwid*5*i, wwid*6*i);
        YSmall[i] = random(fishHeight*1.5, height-hhei*2.25);
      }
    }
  } else if (difficulty == 2) {
    SmallSpeed = wwid*1.6;
    for (int i = 0; i < XSmall.length; i++) {
      XSmall[i] = XSmall[i] - SmallSpeed;
      if (XSmall[i] <= -wwid*3) {
        XSmall[i] = width+random(wwid*5*i, wwid*6*i);
        YSmall[i] = random(fishHeight*1.5, height-hhei*2.25);
      }
    }
  }
}

void drawAngler() {
  //Small fish2 image
  for (int i = 0; i < XYellow.length; i++) {
    image(Good, XYellow[i], YYellow[i], wwid*10, hhei*6);
  }

  float SmallSpeed1;
  if (difficulty == 1) {
    SmallSpeed1 = wwid*0.75;
    for (int i = 0; i < XYellow.length; i++) {
      XYellow[i] = XYellow[i] - SmallSpeed1;
      if (XYellow[i] <= -wwid*10) {
        XYellow[i] = width+random(wwid*7*i, wwid*8*i);
        YYellow[i] = random(fishHeight*1.5, height-hhei*6);
      }
    }
  } else if (difficulty == 2) {
    SmallSpeed1 = wwid*1.5;
    for (int i = 0; i < XYellow.length; i++) {
      XYellow[i] = XYellow[i] - SmallSpeed1;
      if (XYellow[i] <= -wwid*10) {
        XYellow[i] = width+random(wwid*7*i, wwid*8*i);
        YYellow[i] = random(fishHeight*1.5, height-hhei*6);
      }
    }
  }
}

void drawSmall3() {
  //Small fish3 image
  for (int i = 0; i < XAngler.length; i++) {
    image(big3, XAngler[i], YAngler[i], wwid*15, hhei*10);
  }

  float SmallSpeed2;
  if (difficulty == 1) {
    SmallSpeed2 = wwid*0.7;
    for (int i = 0; i < XAngler.length; i++) {
      XAngler[i] = XAngler[i] - SmallSpeed2;
      if (XAngler[i] <= -wwid*15) {
        XAngler[i] = width+random(wwid*7*i, wwid*8*i);
        YAngler[i] = random(fishHeight*1.5, height-hhei*12);
      }
    }
  } else if (difficulty == 2) {
    SmallSpeed2 = wwid*1.4;
    for (int i = 0; i < XAngler.length; i++) {
      XAngler[i] = XAngler[i] - SmallSpeed2;
      if (XAngler[i] <= -wwid*15) {
        XAngler[i] = width+random(wwid*7*i, wwid*8*i);
        YAngler[i] = random(fishHeight*1.5, height-hhei*12);
      }
    }
  }
}
