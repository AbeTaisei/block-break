void gameTitle() {
  playerMove();
  playerDisp();
  blockDisp();
  scoreDisp();
  mcnt++;
  if ((mcnt%60)<40) {
    textSize(20);
    fill(20, 100, 100);
    text("Click to start", 140, 360);
  }
}
