int gseq; //ゲームの流れ管理
int px = 200;
int py = 420;
int pw = 40;
int ph = 20;
float bx;//ball
float by;
float spdx;//ball speed
float spdy;
int bw = 7;//ball width and height
int bh = 7;
int blw = 78;//ブロックと幅の高さ
int blh = 30;
int[] blf = new int [25];//0:ブロックを非表示、1:表示
float lastx=bx;
float lasty=by;
int bexist = 0;//0でブロックが存在しない１でブロックが存在する
int score;
int mcnt;//message
void setup() {
  size(400, 500);
  noStroke();
  colorMode(HSB, 100, 100, 100);
  gameInit();//ゲームの初期化
}
void draw() {
  background(0);
  if (gseq==0) {
    gameTitle();//タイトル表示
  } else if ( gseq==1) {
    gamePlay();//プレイ中の画面
  } else {
    gameOver();
  }
}
