int ledPin = 3;
int ledVal = 0;

void setup() {
  // put your setup code here, to run once:
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:

  for (int i = 0; i < 255; i++) {
    ledVal = i;
    analogWrite(ledPin, ledVal);
    delay(10);
  }
  for (int i = 255; i > 0; i--) {
    ledVal = i;
    analogWrite(ledPin, ledVal);
    delay(10);
  }


}
