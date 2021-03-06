void mouseReleased() {
  if (mode == HOME) {
    homeReleased();
  } else if (mode == GAME) {
    gameReleased();
  } else if (mode == GAMEOVER) {
    gameoverReleased();
  } else if (mode == PAUSE) {
    pauseReleased();
  } else {
    println("MODE FRAMEWORK ERROR!");
  }
}

void keyPressed() {
  if (keyCode == UP)    upkey    = true;
  if (keyCode == DOWN)  downkey  = true;
  if (keyCode == LEFT)  leftkey  = true;
  if (keyCode == RIGHT) rightkey = true;
  if (keyCode == SHIFT) shiftkey = true;
  if (keyCode == '1')   onekey   = true;
  if (keyCode == '2')   twokey   = true;
  if (keyCode == '3')   threekey = true;
  if (keyCode == '4')   fourkey  = true;
  if (keyCode == '5')   fivekey  = true;
  if (keyCode == '6')   sixkey   = true;
  if (keyCode == ' ')   spacekey = true;
  if (keyCode == 'W' || keyCode == 'w' )   wkey = true;
  if (keyCode == 'S' || keyCode == 's' )   skey = true;
  if (keyCode == 'A' || keyCode == 'a' )   akey = true;
  if (keyCode == 'D' || keyCode == 'd' )   dkey = true;
}

void keyReleased() {
  if (keyCode == UP)    upkey    = false;
  if (keyCode == DOWN)  downkey  = false;
  if (keyCode == LEFT)  leftkey  = false;
  if (keyCode == RIGHT) rightkey = false;
  if (keyCode == SHIFT) shiftkey = false;
  if (keyCode == '1')   onekey   = false;
  if (keyCode == '2')   twokey   = false;
  if (keyCode == ' ')   spacekey = false;
  if (keyCode == '3')   threekey = false;
  if (keyCode == '4')   fourkey  = false;
  if (keyCode == '5')   fivekey  = false;
  if (keyCode == '6')   sixkey   = false;
  if (keyCode == 'W' || keyCode == 'w' )   wkey = false;
  if (keyCode == 'S' || keyCode == 's' )   skey = false;
  if (keyCode == 'A' || keyCode == 'a' )   akey = false;
  if (keyCode == 'D' || keyCode == 'd' )   dkey = false;
}
