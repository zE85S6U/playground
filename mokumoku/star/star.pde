/* 流れ星っぽく表示
 *
 */

// 点を表示する個数
int num = 5;

// 点のx,y軸
int[] x = new int[num];
int[] y = new int[num];

// フレームをカウント
int[] count = new int[num];

void setup() {
  // ウィンドウのサイズ
  size(400, 400);

  // 描写速度
  //frameRate(5);

  // 背景
  background(50);
  // 点の大きさ
  strokeWeight(3);
  // 点の色
  stroke(255);

  // 点をランダムに表示
  for (int i = 0; i < x.length; i++) 
  {
    x[i] = (int)random(width);
    y[i] = (int)random(height/2);
    point(x[i] ,y[i]);
  }
}

void draw() {
  // 背景
  //background(240, 0, 0);

  // 移動する
  for (int i = 0; i < x.length; i++)
  {
    point(x[i], y[i]);
    x[i] = x[i] + 1;
    y[i] = y[i] + 1;

    // 閾値まで行ったら初期化したい
    if (count[i] > 100)
    {
      background(50);
      count[i] = 0;
    }
    // 端まで行ったら初期化する
    else if (x[i] > width || y[i] > height)
    {
      x[i] = (int)random(width);
      y[i] = (int)random(height/4);
      background(50);
      count[i] = 0;
    }
    count[i] += 1;
  }
}
