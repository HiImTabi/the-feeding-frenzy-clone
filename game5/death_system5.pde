void death() {
  if (order == 1 && conPage == 0) {
        for (int i = 0; i < XYellow.length; i++) {
          // Yellow FISH Hitboxes - REMOVE AFTER TESTING!
          stroke(255,0,0);
          rect(XYellow[i],YYellow[i],wwid*10,hhei*6);
          noStroke();
          if (Xlocation+fishWidth >= XYellow[i] && Xlocation <= XYellow[i]+wwid*10 && Ylocation+fishHeight >= YYellow[i] && Ylocation <= YYellow[i]+hhei*6) {
            order = 3;
          }
        }
        for (int i = 0; i < XAngler.length; i++) {
          stroke(255,0,0);
          rect(XAngler[i],YAngler[i],wwid*15,hhei*10);
          noStroke();
          if (Xlocation+fishWidth >= XAngler[i] && Xlocation <= XAngler[i]+wwid*15 && Ylocation+fishHeight >= YAngler[i] && Ylocation <= YAngler[i]+hhei*10) {
            order = 3;
          }
        }
    if (difficulty == 1) {
      for (int i = 0; i < XGood.length; i++) {
        DIE(XGood[i], YGood[i]);
      }
    } else if (difficulty == 2) {
        for (int i = 0; i < XEvil.length; i++) {
          DIE(XEvil[i], YEvil[i]);
      }
    }
  }
}

// HITBOXES OF SHARKS (work in progress)
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
  for (int i = 0; i < XGood.length; i++) {
    XGood[i] = width+random(wwid*5*i, hhei*10*i);
    YGood[i] = random(fishHeight*1.5, height-hhei*12);
  }
  for (int i = 0; i < XEvil.length; i++) {
    XEvil[i] = width+random(wwid*5*i, hhei*10*i);
    YEvil[i] = random(fishHeight*1.5, height-hhei*12);
  }
  for (int i = 0; i < XSmall.length; i++) {
    XSmall[i] = width+random(wwid*5*i, wwid*6*i);
    YSmall[i] = random(fishHeight*1.5, height-hhei*2.25);
  }
  for (int i = 0; i < XYellow.length; i++) {
    XYellow[i] = width+random(wwid*2*i, wwid*4*i);
    YYellow[i] = random(fishHeight*1.5, height-hhei*6);
  }
  for (int i = 0; i < XAngler.length; i++) {
    XAngler[i] = width+random(wwid*5*i, wwid*6*i);
    YAngler[i] = random(fishHeight*1.5, height-hhei*10);
  }
}
