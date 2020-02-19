void drawOriginalFish() {
  if (order == 3) {  //dead fish
    if (mouseX >= pmouseX) {  //swim in positive direction (right)
      if (mouseX >= width-fishWidth*0.5) {
        Xlocation = width-fishWidth;
      } else if (mouseX <= fishWidth*0.5) {
        Xlocation = 0;
      } else {
        Xlocation = mouseX-fishWidth*0.5;
      }
      if (mouseY >= height-fishHeight*0.7) {
        Ylocation = height-fishHeight;
      } else if (mouseY <= fishHeight*0.3) {
        Ylocation = 0;
      } else {
        Ylocation = mouseY-fishHeight*0.3;
      }
      //fish image
      image(fish2, Xlocation, Ylocation, fishWidth, fishHeight);
    } else if (mouseX < pmouseX) {  //swim in negative direction (left)
      if (mouseX >= width-fishWidth*0.5) {
        Xlocation = width-fishWidth;
      } else if (mouseX <= fishWidth*0.5) {
        Xlocation = 0;
      } else {
        Xlocation = mouseX-fishWidth*0.5;
      }
      if (mouseY >= height-fishHeight*0.7) {
        Ylocation = height-fishHeight;
      } else if (mouseY <= fishHeight*0.3) {
        Ylocation = 0;
      } else {
        Ylocation = mouseY-fishHeight*0.3;
      }
      //fish image
      image(fish3, Xlocation, Ylocation, fishWidth, fishHeight);
    }
  } else if (order == 1) {  //alive fish
    if (mouseX >= pmouseX) {  //swim in positive direction (right)
      fishType = 1;
      if (mouseX >= width-fishWidth*0.5) {
        Xlocation = width-fishWidth;
      } else if (mouseX <= fishWidth*0.5) {
        Xlocation = 0;
      } else {
        Xlocation = mouseX-fishWidth*0.5;
      }
      if (mouseY >= height-fishHeight*0.7) {
        Ylocation = height-fishHeight;
      } else if (mouseY <= statusWidth*1.8) {
        Ylocation = statusWidth*1.5;
      } else {
        Ylocation = mouseY-fishHeight*0.3;
      }

      //fish images in different levels - fish grows up
      if (level < 5) {
        fishWidth = wwid*8;
        fishHeight = hhei*5;
      } else if (level < 7) {
        fishWidth = wwid*11;
        fishHeight = hhei*6.875;
      } else if (level < 9) {
        fishWidth = wwid*15;
        fishHeight = hhei*9.375;
      } else if (level <= 10) {
        fishWidth = wwid*20;
        fishHeight = hhei*12.5;
      }
      image(fish, Xlocation, Ylocation, fishWidth, fishHeight);
    } else if (mouseX < pmouseX) {  //swim in negative direction (left)
      fishType = 2;
      if (mouseX >= width-fishWidth*0.5) {
        Xlocation = width-fishWidth;
      } else if (mouseX <= fishWidth*0.5) {
        Xlocation = 0;
      } else {
        Xlocation = mouseX-fishWidth*0.5;
      }
      if (mouseY >= height-fishHeight*0.7) {
        Ylocation = height-fishHeight;
      } else if (mouseY <= statusWidth*1.8) {
        Ylocation = statusWidth*1.5;
      } else {
        Ylocation = mouseY-fishHeight*0.3;
      }
      //fish image
      if (level < 5) {
        fishWidth = wwid*8;
        fishHeight = hhei*5;
      } else if (level < 7) {
        fishWidth = wwid*11;
        fishHeight = hhei*6.875;
      } else if (level < 9) {
        fishWidth = wwid*15;
        fishHeight = hhei*9.375;
      } else if (level <= 10) {
        fishWidth = wwid*20;
        fishHeight = hhei*12.5;
      }
      image(fish1, Xlocation, Ylocation, fishWidth, fishHeight);
    }
  } else {
    if (mouseX >= pmouseX) {  //swim in positive direction (right)
      fishType = 1;
      if (mouseX >= width-fishWidth*0.5) {
        Xlocation = width-fishWidth;
      } else if (mouseX <= fishWidth*0.5) {
        Xlocation = 0;
      } else {
        Xlocation = mouseX-fishWidth*0.5;
      }
      if (mouseY >= height-fishHeight*0.7) {
        Ylocation = height-fishHeight;
      } else if (mouseY <= fishHeight*0.3) {
        Ylocation = 0;
      } else {
        Ylocation = mouseY-fishHeight*0.3;
      }
      //fish image
      image(fish, Xlocation, Ylocation, fishWidth, fishHeight);
    } else if (mouseX < pmouseX) {  //swim in negative direction (left)
      fishType = 2;
      if (mouseX >= width-fishWidth*0.5) {
        Xlocation = width-fishWidth;
      } else if (mouseX <= fishWidth*0.5) {
        Xlocation = 0;
      } else {
        Xlocation = mouseX-fishWidth*0.5;
      }
      if (mouseY >= height-fishHeight*0.7) {
        Ylocation = height-fishHeight;
      } else if (mouseY <= fishHeight*0.3) {
        Ylocation = 0;
      } else {
        Ylocation = mouseY-fishHeight*0.3;
      }
      //fish image
      image(fish1, Xlocation, Ylocation, fishWidth, fishHeight);
    }
  }
}
