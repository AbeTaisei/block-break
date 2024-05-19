void blockHitCheck(int ii, int xx, int yy) {//ブロックとたまの当たり判定
  if (!((xx<bx)&&(xx+blw>bx)&&(yy<by)&&(yy+blh>by)) ) {
    return;//ブロックと当たらなかったとき戻る
  }
  blf[ii] = 0;//0:ブロックなし
  score += 10;
  if( ii < 10){
    score +=10;
  }  
  //どの方向から来たかをチェックする
  if((xx<lastx)&&(xx+blw>lastx)){
    //ブロックの幅の中にいた
    spdy = -spdy;
    return;
  }
  if((yy<lasty)&&(yy+blh>lasty)){
    //ブロックの高さの中にいた
    spdx = -spdx;
    return;
  }
  spdx = -spdx;
  spdy = -spdy;
}
