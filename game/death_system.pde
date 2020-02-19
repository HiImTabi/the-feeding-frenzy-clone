void death() {
  if (conPage == 0) {
    if (fishType == 1 || fishType == 2) {  //left or right
      if (level < 5) {
        if (difficulty == 1) {
          for (int i = 0; i < Xsmall1.length; i++) {
            if (Xlocation+fishWidth*0.8 >= Xsmall1[i] && Xlocation+fishWidth*0.8 <= Xsmall1[i]+wwid*9 && mouseY > Ysmall1[i]-hhei*0.5 && mouseY < Ysmall1[i]+hhei*6) {
              order = 3;
            }
          }
        } else {
          for (int i = 0; i < Xsmall12.length; i++) {
            if (Xlocation+fishWidth*0.8 >= Xsmall12[i] && Xlocation+fishWidth*0.8 <= Xsmall12[i]+wwid*9 && mouseY > Ysmall12[i]-hhei*0.5 && mouseY < Ysmall12[i]+hhei*6) {
              order = 3;
            }
          }
        }
      }
      if (level < 7) {
        if (difficulty == 1) {
          for (int i = 0; i < Xsmall2.length; i++) {
            if (Xlocation+fishWidth*0.8 >= Xsmall2[i] && Xlocation+fishWidth*0.8 <= Xsmall2[i]+wwid*11.25 && mouseY > Ysmall2[i]+hhei && mouseY < Ysmall2[i]+hhei*10) {
              order = 3;
            }
          }
        } else {
          for (int i = 0; i < Xsmall22.length; i++) {
            if (Xlocation+fishWidth*0.8 >= Xsmall22[i] && Xlocation+fishWidth*0.8 <= Xsmall22[i]+wwid*11.25 && mouseY > Ysmall22[i]+hhei && mouseY < Ysmall22[i]+hhei*10) {
              order = 3;
            }
          }
        }
      }
      if (level < 9) {
        if (difficulty == 1) {
          for (int i = 0; i < Xbig1.length; i++) {
            if (Xlocation+fishWidth*0.8 >= Xbig1[i] && Xlocation+fishWidth*0.8 <= Xbig1[i]+wwid*18 && mouseY > Ybig1[i]+hhei*2.5 && mouseY < Ybig1[i]+hhei*12) {
              order = 3;
            }
          }
        } else {
          for (int i = 0; i < Xbig2.length; i++) {
            if (Xlocation+fishWidth*0.8 >= Xbig2[i] && Xlocation+fishWidth*0.8 <= Xbig2[i]+wwid*18 && mouseY > Ybig2[i] && mouseY < Ybig2[i]+hhei*12) {
              order = 3;
            }
          }
        }
      }
    }
  }
}

// loads game-over screen
void Reset() {
  for (int i = 0; i < Xbig1.length; i++) {
    Xbig1[i] = width+random(wwid*30, wwid*50)*(i+1);
    Ybig1[i] = random(statusWidth*1.5, height-hhei*12);
  }
  for (int i = 0; i < Xbig2.length; i++) {
    Xbig2[i] = width+random(wwid*20, wwid*60)*(i+1);
    Ybig2[i] = random(statusWidth*1.5, height-hhei*12);
  }
  for (int i = 0; i < Xsmall.length; i++) {
    Xsmall[i] = width+random(wwid*5, wwid*10)*(i+1);
    Ysmall[i] = random(statusWidth*1.5, height-hhei*2.25);
  }
  for (int i = 0; i < Xsmall1.length; i++) {
    Xsmall1[i] = width+random(wwid*10, wwid*15)*(i+1);
    Ysmall1[i] = random(statusWidth*1.5, height-hhei*6);
  }
  for (int i = 0; i < Xsmall12.length; i++) {
    Xsmall12[i] = width+random(wwid*10, wwid*15)*(i+1);
    Ysmall12[i] = random(statusWidth*1.5, height-hhei*6);
  }
  for (int i = 0; i < Xsmall2.length; i++) {
    Xsmall2[i] = width+random(wwid*40, wwid*60)*(i+1);
    Ysmall2[i] = random(statusWidth*1.5, height-hhei*10);
  }
  for (int i = 0; i < Xsmall22.length; i++) {
    Xsmall22[i] = width+random(wwid*40, wwid*50)*(i+1);
    Ysmall22[i] = random(statusWidth*1.5, height-hhei*10);
  }
}
