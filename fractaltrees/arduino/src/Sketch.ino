/* 可変抵抗器の値を読み取る
 *
 */

int sensorPin = 0;
int val = 0;

void setup() {
    Serial.begin(9600);
}

void loop() {
    val = analogRead(sensorPin) / 4;
    Serial.write((byte)val);
    delay(100);
}
