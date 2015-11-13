void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  // using the adafruit joystick
  pinMode(A0, OUTPUT);
  pinMode(A4, OUTPUT);
  digitalWrite(A0, HIGH);
  digitalWrite(A4, LOW);
}

void loop() {
  // put your main code here, to run repeatedly:
  Serial.write(analogRead(A1) / 4); // send a byte
  delay(10); // pause for a moment
}
