/* 流れ星っぽく表示
 *
 */

// 点を表示する個数
int num = 5;

// 始点の座標
int x, y;

// 終点の座標

// 座標を一時保存
int tmpx, tmpy;

void setup() {
  // ウィンドウのサイズ
  size(400, 400);

  // 背景
  background(50);


  // 描写速度
  //frameRate(5);
}

void draw() {
  // 背景
  //background(50);

  // 点の大きさ
  strokeWeight(2);
  // 点の色
  stroke(255);
  
  tmpx = x;
  tmpy = y;

  point(tmpx, tmpy);

  tmpx += 1;
  tmpy += 1;

  //if (tmpx - x < 100)
  //{

  //  stroke(50);

  //  point(x, y);
  //}

    // 点をランダムに表示

    //  // 移動する
    //  for (int i = 0; i < x.length; i++)
    //  {
    //    point(x[i], y[i]);
    //    x[i] = x[i] + 1;
    //    y[i] = y[i] + 1;
    //
    //    // 閾値まで行ったら初期化したい
    //    if (count[i] > 100)
    //    {
    //      background(50);
    //      count[i] = 0;
    //    }
    //    // 端まで行ったら初期化する
    //    else if (x[i] > width || y[i] > height)
    //    {
    //      x[i] = (int)random(width);
    //      y[i] = (int)random(height/4);
    //      background(50);
    //      count[i] = 0;
    //    }
    //    count[i] += 1;
    //  }
  }
