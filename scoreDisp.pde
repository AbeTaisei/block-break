void scoreDisp(){
  textSize(24);
  fill(0,0,100);
  text("score"+score,10,25);
}
void mousePressed(){
  if(gseq ==0){
    gseq =1;
  }
  if(gseq==2){//ゲームオーバー中
  gameInit();
  }
}
