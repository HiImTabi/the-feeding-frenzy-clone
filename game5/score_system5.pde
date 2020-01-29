void addScore() {
  if (order == 1) {  //right
    if (fishType == 1) { // Right
      for (int i = 0; i < XSmall.length; i++) {
        if (XSmall[i] <= Xlocation+fishWidth && XSmall[i] >= Xlocation && YSmall[i]+hhei*2.25 >= Ylocation && YSmall[i] <= Ylocation+fishHeight) {
          XSmall[i] = width+random(wwid*5*i, wwid*6*i);
          YSmall[i] = random(fishHeight*1.5, height-hhei*2.25);
          if (level < 10) {  //stop adding scores
            score += 4500;  //change score
          }
        }
      }
    } else if (fishType == 2) {  //left
      for (int i = 0; i < XSmall.length; i++) {
        if (XSmall[i]+wwid*3 <= Xlocation+fishWidth && XSmall[i]+wwid*3 >= Xlocation && YSmall[i]+hhei*2.25 >= Ylocation && YSmall[i] <= Ylocation+fishHeight) {
          XSmall[i] = width+random(wwid*5*i, wwid*6*i);
          YSmall[i] = random(fishHeight*1.5, height-hhei*2.25);
          if (level < 10) {
            score += 4500;  // How many points for each fish
          }
        }
      }
    }
  }
  scoreSystem();
}

void scoreSystem() {
  if (score >= 19000 && conPage == 0) {  // Highest score
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
