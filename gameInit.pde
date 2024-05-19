void gameInit(){
  gseq = 0;
  bx =100;
  by = 250;
  spdx = 2;
  spdy = 2;
  for(int i=0;i<25;i++){
    blf[i] = 1; //0:ブロックを非表示1:表示
  }
  bexist = 0;
  score = 0;
  mcnt = 0;
}
