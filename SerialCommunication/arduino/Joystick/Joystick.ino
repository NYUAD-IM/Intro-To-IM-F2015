// sketch to show use of adafruit joystick
// with analogIn pins

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);

  pinMode(A0, OUTPUT);
  pinMode(A4, OUTPUT);
  pinMode(A3, INPUT_PULLUP);
  digitalWrite(A0, HIGH);
  digitalWrite(A4, LOW);

}

void loop() {
  // put your main code here, to run repeatedly:
  Serial.print(analogRead(A1));
  Serial.print(" , ");
  delay(1);
  Serial.print(analogRead(A2));
  Serial.print(" , ");
  delay(1);
  Serial.println(digitalRead(A3));


}
