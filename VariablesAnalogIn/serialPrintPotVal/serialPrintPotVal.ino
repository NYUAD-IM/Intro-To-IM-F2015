int potPin = A0;
int LEDPin = 9;
int potVal = 0;

void setup() {
  // put your setup code here, to run once:
  pinMode(LEDPin, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  potVal = analogRead(potPin);

  digitalWrite(LEDPin, HIGH);
  delay(potVal);
  digitalWrite(LEDPin, LOW);
  delay(potVal);

  Serial.println(potVal);
  
}
