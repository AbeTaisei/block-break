void gameOver(){
  playerDisp();
  blockDisp();
  scoreDisp();
  textSize(50);
  fill(0,100,100);
  text("GAME OVER",60,300);
  mcnt++;
  if((mcnt%60)<40){
    textSize(20);
    fill(20,100,100);
    text("Click to retry!!",140,360);
  }
}
