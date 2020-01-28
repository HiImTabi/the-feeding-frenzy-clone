void drawFish() {
  if (mouseX >= width-fishWidth) {
        Xlocation = width-fishWidth;
      } else if (mouseX <= fishWidth*0.5) {
        Xlocation = 0;
      } else {
        Xlocation = mouseX-fishWidth*0.5;
      }
      if (mouseY >= height-fishHeight) {
        Ylocation = height-fishHeight;
      } else if (mouseY <= fishHeight*0.3) {
        Ylocation = 0;
      } else {
        Ylocation = mouseY-fishHeight*0.3;
      }
}

void drawInGameFish() {
  if (mouseX >= width-fishWidth) {
        Xlocation = width-fishWidth;
      } else if (mouseX <= fishWidth*0.5) {
        Xlocation = 0;
      } else {
        Xlocation = mouseX-fishWidth*0.5;
      }
      if (mouseY >= height-fishHeight) {
        Ylocation = height-fishHeight;
      } else if (mouseY <= fishHeight*1.8) {
        Ylocation = fishHeight*1.5;
      } else {
        Ylocation = mouseY-fishHeight*0.3;
      }
}

void drawOriginalFish() {
  if (order == 3) {  // dead fish
    if (mouseX > pmouseX) {  // Swim in positive direction (right)
      fishType = 1;
      drawFish();
      // Dead fish (facing right) image
      image(fish2, Xlocation, Ylocation, fishWidth, fishHeight);
    } else if (mouseX < pmouseX) {  // Swim in negative direction (left)
      fishType = 2;
      drawFish();
      // Dead fish (facing left) image
      image(fish3, Xlocation, Ylocation, fishWidth, fishHeight);
    } else {
        if (fishType == 1) {
              image(fish2, Xlocation, Ylocation, fishWidth, fishHeight);
            } else if (fishType == 2) {
              image(fish3, Xlocation, Ylocation, fishWidth, fishHeight);
            }
    }
  } else if (order == 1) {  // Fish is alive
    if (mouseX > pmouseX) {  // Swim in positive direction (right)
      fishType = 1;
      drawInGameFish();
      // Change image to be used based on levels (facing right)
      if (level < 5 || level > 10) {
        image(fish, Xlocation, Ylocation, fishWidth, fishHeight);
      } else if (level < 7) {
        image(big2, Xlocation, Ylocation, fishWidth, fishHeight);
      } else if (level < 9) {
        image(big4, Xlocation, Ylocation, fishWidth, fishHeight);
      } else if (level <= 10) {
          if (difficulty == 1) {
            image(shark2, Xlocation, Ylocation, fishWidth, fishHeight);
          } else if (difficulty == 2) {
            image(shark4, Xlocation, Ylocation, fishWidth, fishHeight);
          }
      } else {
          image(fish, Xlocation, Ylocation, fishWidth, fishHeight);
      }
    } else if (mouseX < pmouseX) {  // swim in negative direction (left)
      fishType = 2;
      drawInGameFish();
      // Change image to be used based on levels
      if (level < 5 || level > 10) {
        image(fish1, Xlocation, Ylocation, fishWidth, fishHeight);
      } else if (level < 7) {
        image(big1, Xlocation, Ylocation, fishWidth, fishHeight);
      } else if (level < 9) {
        image(big3, Xlocation, Ylocation, fishWidth, fishHeight);
      } else if (level <= 10) {
          if (difficulty == 1) {
            image(shark1, Xlocation, Ylocation, fishWidth, fishHeight);
          } else if (difficulty == 2) {
            image(shark3, Xlocation, Ylocation, fishWidth, fishHeight);
          }
      } else {
        image(fish1, Xlocation, Ylocation, fishWidth, fishHeight);
      }
    } else {
        if (fishType == 1) {
          if (level < 5 || level > 10) {
            image(fish, Xlocation, Ylocation, fishWidth, fishHeight);
          } else if (level < 7) {
            image(big2, Xlocation, Ylocation, fishWidth, fishHeight);
          } else if (level < 9) {
            image(big4, Xlocation, Ylocation, fishWidth, fishHeight);
          } else if (level <= 10) {
              if (difficulty == 1) {
                image(shark2, Xlocation, Ylocation, fishWidth, fishHeight);
              } else if (difficulty == 2) {
                image(shark4, Xlocation, Ylocation, fishWidth, fishHeight);
              }
          }
        } else if (fishType == 2) {
            if (level < 5 || level > 10) {
          image(fish1, Xlocation, Ylocation, fishWidth, fishHeight);
        } else if (level < 7) {
          image(big1, Xlocation, Ylocation, fishWidth, fishHeight);
        } else if (level < 9) {
          image(big3, Xlocation, Ylocation, fishWidth, fishHeight);
        } else if (level <= 10) {
            if (difficulty == 1) {
              image(shark1, Xlocation, Ylocation, fishWidth, fishHeight);
            } else if (difficulty == 2) {
              image(shark3, Xlocation, Ylocation, fishWidth, fishHeight);
            }
        } else {
          image(fish1, Xlocation, Ylocation, fishWidth, fishHeight);
          }
        }
    }
  } else {
      if (mouseX > pmouseX) {  // Swim in positive direction (right)
        fishType = 1;
        // Alive fish (facing right) image
        image(fish, Xlocation, Ylocation, fishWidth, fishHeight);
        drawFish();
      } else if (mouseX < pmouseX) {  // Swim in negative direction (left)
        fishType = 2;
        // Alive fish (facing left) image
        image(fish1, Xlocation, Ylocation, fishWidth, fishHeight);
        drawFish();
      } else {
          if (fishType == 1) {
            image(fish, Xlocation, Ylocation, fishWidth, fishHeight);
          } else if (fishType == 2) {
            image(fish1, Xlocation, Ylocation, fishWidth, fishHeight);
          }
      }
  }
}
