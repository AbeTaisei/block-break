void blockDisp() {
  int xx, yy;
  bexist = 0;
  for (int i=0; i<25; i++) {
    if ( blf[i] == 1) {
      fill((i/5)*15, 100, 100);
      xx=(i%5) * (blw+2);
      yy= 50 + (i/5) *(blh+2);
      blockHitCheck(i, xx, yy);
      if (blf[i] == 1) {
        rect(xx, yy, blw, blh, 2);
        bexist =1;//ブロックは存在する
      }
    }
  }
}
