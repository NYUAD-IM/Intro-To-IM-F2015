int potPin = A0;
int ledPin = 3;
int potVal;
int ledVal;

void setup() {
  // put your setup code here, to run once:
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  potVal = analogRead(potPin); // read the val on A0
  delay(2); // let the ADC settle

  ledVal = potVal/4;

  analogWrite(ledPin, ledVal);

  Serial.print("Pot Value = ");
  Serial.print(potVal);
  Serial.print(", Led Value = ");
  Serial.println(ledVal);
}
