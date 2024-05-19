void ballDisp() {
  imageMode(CENTER);//絵の中心を基点とする
  fill(0, 0, 100);
  rect(bx, by, bw, bh);
  imageMode(CORNER);//絵の左端を基点とする
}
void ballMove() {
  lastx = bx;
  lasty = by;
  bx+= spdx;
  by+=spdy;
  if (by>height) {//画面の下に出たとき
    //spdy = -spdx;//跳ね返す
    gseq = 2;//go to gameover
  }
  if (by<0) {//画面上から出たとき
    spdy=-spdy;
  }
  if ((bx<0)||(bx>width)) {//画面左右から出たとき
    spdx = -spdx;
  }
  //自機との当たり判定
  if ((px<bx)&&(px+pw>bx)&&(py<by)&&(py+ph>by) ) {
    spdy=-Math.abs(spdy);
    if (bexist == 0 ) {
      //ブロックがなければ復活
      for (int i=0; i<25; i++) {
      blf[i] = 1;
      }
      score++;//復活回数をスコアに入れる
    }
  }
}
