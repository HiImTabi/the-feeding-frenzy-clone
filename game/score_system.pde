void addScore() {
  if (fishType == 1) {  //right
    //smallest fish
    for (int i = 0; i < Xsmall.length; i++) {
      if (Xsmall[i] <= Xlocation+fishWidth && Xsmall[i] >= Xlocation && Ysmall[i]+hhei*2.25 >= Ylocation && Ysmall[i] <= Ylocation+fishHeight) {
        Xsmall[i] = width+random(wwid*5*i, wwid*6*i);
        Ysmall[i] = random(statusWidth*1.5, height-hhei*2.25);
        if (level < 10) {  //stop adding scores
          score+=100;  //change score
        }
      }
    }
    //fish1
    if (level > 4) {
      if (difficulty == 1) {
        for (int i = 0; i < Xsmall1.length; i++) {
          if (Xsmall1[i] <= Xlocation+fishWidth && Xsmall1[i] >= Xlocation && Ysmall1[i]+hhei*6 >= Ylocation && Ysmall1[i] <= Ylocation+fishHeight) {
            Xsmall1[i] = width+random(wwid*7*i, wwid*8*i);
            Ysmall1[i] = random(statusWidth*1.5, height-hhei*6);
            if (level < 10) {  //stop adding scores
              score+=150;  //change score
            }
          }
        }
      } else {
        for (int i = 0; i < Xsmall12.length; i++) {
          if (Xsmall12[i] <= Xlocation+fishWidth && Xsmall12[i] >= Xlocation && Ysmall12[i]+hhei*6 >= Ylocation && Ysmall12[i] <= Ylocation+fishHeight) {
            Xsmall12[i] = width+random(wwid*7*i, wwid*8*i);
            Ysmall12[i] = random(statusWidth*1.5, height-hhei*6);
            if (level < 10) {  //stop adding scores
              score+=150;  //change score
            }
          }
        }
      }
    }
    //fish2
    if (level > 6) {
      if (difficulty == 1) {
        for (int i = 0; i < Xsmall2.length; i++) {
          if (Xsmall2[i] <= Xlocation+fishWidth && Xsmall2[i] >= Xlocation && Ysmall2[i]+hhei*10 >= Ylocation && Ysmall2[i] <= Ylocation+fishHeight) {
            Xsmall2[i] = width+random(wwid*7*i, wwid*8*i);
            Ysmall2[i] = random(fishHeight*1.5, height-hhei*10);
            if (level < 10) {  //stop adding scores
              score+=300;  //change score
            }
          }
        }
      } else {
        for (int i = 0; i < Xsmall22.length; i++) {
          if (Xsmall22[i] <= Xlocation+fishWidth && Xsmall22[i] >= Xlocation && Ysmall22[i]+hhei*10 >= Ylocation && Ysmall22[i] <= Ylocation+fishHeight) {
            Xsmall22[i] = width+random(wwid*7*i, wwid*8*i);
            Ysmall22[i] = random(fishHeight*1.5, height-hhei*10);
            if (level < 10) {  //stop adding scores
              score+=300;  //change score
            }
          }
        }
      }
    }
    //shark
    if (level > 8) {
      if (difficulty == 1) {
        for (int i = 0; i < Xbig1.length; i++) {
          if (Xbig1[i] <= Xlocation+fishWidth && Xbig1[i] >= Xlocation && Ybig1[i]+hhei*12 >= Ylocation && Ybig1[i] <= Ylocation+fishHeight) {
            Xbig1[i] = width+random(wwid*5*i, hhei*10*i);
            Ybig1[i] = random(statusWidth*1.5, height-hhei*12);
            if (level < 10) {  //stop adding scores
              score+=600;  //change score
            }
          }
        }
      } else {
        for (int i = 0; i < Xbig2.length; i++) {
          if (Xbig2[i] <= Xlocation+fishWidth && Xbig2[i] >= Xlocation && Ybig2[i]+hhei*12 >= Ylocation && Ybig2[i] <= Ylocation+fishHeight) {
            Xbig2[i] = width+random(wwid*5*i, hhei*10*i);
            Ybig2[i] = random(statusWidth*1.5, height-hhei*12);
            if (level < 10) {  //stop adding scores
              score+=600;  //change score
            }
          }
        }
      }
    }
  } else if (fishType == 2) {  //left
    //smallest fish
    for (int i = 0; i < Xsmall.length; i++) {
      if (Xsmall[i]+wwid*3 <= Xlocation+fishWidth && Xsmall[i]+wwid*3 >= Xlocation && Ysmall[i]+hhei*2.25 >= Ylocation && Ysmall[i] <= Ylocation+fishHeight) {
        Xsmall[i] = width+random(wwid*5*i, wwid*6*i);
        Ysmall[i] = random(statusWidth*1.5, height-hhei*2.25);
        if (level < 10) {  //stop adding scores
          score+=100;  //change score
        }
      }
    }
    //fish1
    if (level > 4) {
      if (difficulty == 1) {
        for (int i = 0; i < Xsmall1.length; i++) {
          if (Xsmall1[i]+wwid*10 <= Xlocation+fishWidth && Xsmall1[i]+wwid*10 >= Xlocation && Ysmall1[i]+hhei*6>= Ylocation && Ysmall1[i] <= Ylocation+fishHeight) {
            Xsmall1[i] = width+random(wwid*7*i, wwid*8*i);
            Ysmall1[i] = random(statusWidth*1.5, height-hhei*6);
            if (level < 10) {  //stop adding scores
              score+=150;  //change score
            }
          }
        }
      } else {
        for (int i = 0; i < Xsmall12.length; i++) {
          if (Xsmall12[i]+wwid*10 <= Xlocation+fishWidth && Xsmall12[i]+wwid*10 >= Xlocation && Ysmall12[i]+hhei*6>= Ylocation && Ysmall12[i] <= Ylocation+fishHeight) {
            Xsmall12[i] = width+random(wwid*7*i, wwid*8*i);
            Ysmall12[i] = random(statusWidth*1.5, height-hhei*6);
            if (level < 10) {  //stop adding scores
              score+=150;  //change score
            }
          }
        }
      }
    }
    //fish2
    if (level > 6) {
      if (difficulty == 1) {
        for (int i = 0; i < Xsmall2.length; i++) {
          if (Xsmall2[i]+wwid*15 <= Xlocation+fishWidth && Xsmall2[i]+wwid*15 >= Xlocation && Ysmall2[i]+hhei*10 >= Ylocation && Ysmall2[i] <= Ylocation+fishHeight) {
            Xsmall2[i] = width+random(wwid*7*i, wwid*8*i);
            Ysmall2[i] = random(fishHeight*1.5, height-hhei*10);
            if (level < 10) {  //stop adding scores
              score+=300;  //change score
            }
          }
        }
      } else {
        for (int i = 0; i < Xsmall22.length; i++) {
          if (Xsmall22[i]+wwid*15 <= Xlocation+fishWidth && Xsmall22[i]+wwid*15 >= Xlocation && Ysmall22[i]+hhei*10 >= Ylocation && Ysmall22[i] <= Ylocation+fishHeight) {
            Xsmall22[i] = width+random(wwid*7*i, wwid*8*i);
            Ysmall22[i] = random(fishHeight*1.5, height-hhei*10);
            if (level < 10) {  //stop adding scores
              score+=300;  //change score
            }
          }
        }
      }
    }
    //shark
    if (level > 8) {
      if (difficulty == 1) {
        for (int i = 0; i < Xbig1.length; i++) {
          if (Xbig1[i]+wwid*24 <= Xlocation+fishWidth && Xbig1[i]+wwid*24 >= Xlocation && Ybig1[i]+hhei*12 >= Ylocation && Ybig1[i] <= Ylocation+fishHeight) {
            Xbig1[i] = width+random(wwid*5*i, hhei*10*i);
            Ybig1[i] = random(statusWidth*1.5, height-hhei*12);
            if (level < 10) {  //stop adding scores
              score+=600;  //change score
            }
          }
        }
      } else {
        for (int i = 0; i < Xbig2.length; i++) {
          if (Xbig2[i]+wwid*24 <= Xlocation+fishWidth && Xbig2[i]+wwid*24 >= Xlocation && Ybig2[i]+hhei*12 >= Ylocation && Ybig2[i] <= Ylocation+fishHeight) {
            Xbig2[i] = width+random(wwid*5*i, hhei*10*i);
            Ybig2[i] = random(statusWidth*1.5, height-hhei*12);
            if (level < 10) {  //stop adding scores
              score+=600;  //change score
            }
          }
        }
      }
    }
  }
  scoreSystem();
}

void scoreSystem() {
  if (score >= 19000 && conPage == 0) {  //score limitation
    score = 19000;
  }
  percentage = score/19000.0;
  for (int i = 1; i < 11; i++) {
    if (score >= scoreSize[i]) {
      if (i < 10) {
        level = i;
      } else if (i >= 10) {
        score = scoreSize[10];
        level = 10;
      }
    }
  }
}
