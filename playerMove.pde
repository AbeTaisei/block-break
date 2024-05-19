void playerDisp() {
  fill(0, 0, 100);
  rect(px, py, pw, ph, 5);
}
void playerMove() {
  px=mouseX;
  if ( (px+pw)>width) {
    px = width-pw;
  }
}
