class Sniper extends Weapon{
  
  Sniper() {
    imageWidth = 78;
    imageHeight = 33;
    offsetX = 20;
    offsetY = 20;
    gun = 4;
    //shootTimer = 25;
    shootTimer = 4;
  }
  
  void update() {
    rectMode(CENTER);
    imageMode(CENTER);
    noStroke();
    fill(yellow);
    float a = atan2(mouseX-myHero.loc.x, mouseY-myHero.loc.y) - (HALF_PI * 3);
    if (a < -HALF_PI && a > -HALF_PI*3) {
      faceRight = true;
      faceLeft = false;
    } else {
      faceRight = false;
      faceLeft = true;
    }
    if (faceRight) {
      pushMatrix();
      translate(myHero.loc.x+offsetX, myHero.loc.y+offsetY);
      rightRotate = -atan2(mouseX-myHero.loc.x, mouseY-myHero.loc.y) - (HALF_PI * 3);
      rotate(rightRotate);
      image(sniperRight, 0, 0, imageWidth, imageHeight);
      popMatrix();
    } else if (faceLeft) {
      pushMatrix();
      translate(myHero.loc.x-offsetX, myHero.loc.y+offsetY);
      leftRotate = -atan2(mouseX-myHero.loc.x, mouseY-myHero.loc.y) + (HALF_PI * 3);
      rotate(leftRotate);
      image(sniperLeft, 0, 0, imageWidth, imageHeight);
      popMatrix();
    }
    imageMode(CENTER);
    rectMode(CORNER);
  }
  
  void shoot() {
    super.shoot();
  }
  
}