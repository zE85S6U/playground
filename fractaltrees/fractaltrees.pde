/* FractalTrees
 * Arduinoで読み取った可変抵抗器の値で
 * 木の枝が変化します
 *
 * 参考
 * Fractal Trees - Recursive
 * coding challenge #14  
 * https://youtu.be/0jjeOYMjmDU
 */

import processing.serial.*;

Serial port;      
int val = 0;          
float angle = 0;

void setup() {
  size(400, 400);
  //println(Serial.list());
  String arduinoPort = Serial.list()[0];
  port = new Serial(this, arduinoPort, 9600);
}

void draw() {
  background(51);
  if (port.available() > 0) {
    val = port.read();
  }
  angle = map(val, 0, 255, TWO_PI, PI + HALF_PI);
  //println("val : " + val + " angle : " + angle);
  stroke(255); 
  translate(200, height);
  branch(100);
}

void branch(float len) {
  line(0, 0, 0, -len);
  translate(0, -len);
  if (len > 4) {
    pushMatrix();
    rotate(angle);
    branch(len * 0.67);
    popMatrix();
    pushMatrix();
    rotate(-angle);
    branch(len * 0.67);
    popMatrix();
  }
}
