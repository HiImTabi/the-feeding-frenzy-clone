void death() {
  if (order == 1 && conPage == 0) {
        for (int i = 0; i < Xsmall1.length; i++) {
          //if (mouseX >= Xsmall1[i] && mouseX <= Xsmall1[i]+wwid*10 && mouseY >= Ysmall1[i] && mouseY <= Ysmall1[i]+hhei*6) {
          stroke(255,0,0);
          rect(Xsmall1[i],Ysmall1[i],wwid*10,hhei*6);
          noStroke();
          if (Xlocation+fishWidth >= Xsmall1[i] && Xlocation <= Xsmall1[i]+wwid*10 && Ylocation+fishHeight >= Ysmall1[i] && Ylocation <= Ysmall1[i]+hhei*6) {
            order = 3;
          }
        }
        for (int i = 0; i < Xsmall2.length; i++) {
          stroke(255,0,0);
          rect(Xsmall2[i],Ysmall2[i],wwid*15,hhei*10);
          noStroke();
          if (Xlocation+fishWidth >= Xsmall2[i] && Xlocation <= Xsmall2[i]+wwid*15 && Ylocation+fishHeight >= Ysmall2[i] && Ylocation <= Ysmall2[i]+hhei*10) {
            order = 3;
          }
        }
    if (difficulty == 1) {
      for (int i = 0; i < Xbig1.length; i++) {
        DIE(Xbig1[i], Ybig1[i]);
      }
    } else if (difficulty == 2) {
        for (int i = 0; i < Xbig2.length; i++) {
          DIE(Xbig2[i], Ybig2[i]);
      }
    }
  }
}

// hitboxes of sharks (work in progress)
void DIE(float X, float Y) {
  if (Xlocation+fishWidth >= X && Xlocation <= X+wwid*24 && Ylocation+fishHeight >= Y && Ylocation <= Y+hhei*12) {
    order = 3;
  }
  // FOR TESTING HITBOXES OF SHARK - PLEASE DELETE IN FINAL VERSION
  stroke(255,0,0);
  rect(X,Y,wwid*24,hhei*12);
  noStroke();
}

// loads game-over screen
void Reset() {
  for (int i = 0; i < Xbig1.length; i++) {
    Xbig1[i] = width+random(wwid*5*i, hhei*10*i);
    Ybig1[i] = random(fishHeight*1.5, height-hhei*12);
  }
  for (int i = 0; i < Xbig2.length; i++) {
    Xbig2[i] = width+random(wwid*5*i, hhei*10*i);
    Ybig2[i] = random(fishHeight*1.5, height-hhei*12);
  }
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
}
