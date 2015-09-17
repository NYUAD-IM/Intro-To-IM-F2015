int LDRPin = A0;
int LEDPin = 9;
int LDRVal = 0;

void setup() {
  // put your setup code here, to run once:
  pinMode(LEDPin, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  int mappedVal;

  LDRVal = analogRead(LDRPin);
  mappedVal = map(LDRVal, 520, 920, 100, 500);
  digitalWrite(LEDPin, HIGH);
  delay(mappedVal);
  digitalWrite(LEDPin, LOW);
  delay(mappedVal);

  Serial.print("sensor Value :" );
  Serial.print(LDRVal);
  Serial.print("mapped Value : ");
  Serial.println(mappedVal);

}
