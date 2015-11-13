void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  // using the adafruit joystick
  pinMode(A0, OUTPUT);
  pinMode(A4, OUTPUT);
  digitalWrite(A0, HIGH);
  digitalWrite(A4, LOW);

  Serial.println("500");
}

void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available() > 0) {
    int inByte = Serial.read();
    Serial.println(analogRead(A1)); // send a byte
  }
}
