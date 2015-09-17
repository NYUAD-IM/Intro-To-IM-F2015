int potPin = A0;  // pin the pot is attached to
int LEDPin = 9;   // pin the LED is attched to
int potVal = 0;   // value of the sensor

void setup() {
  // put your setup code here, to run once:
  pinMode(LEDPin, OUTPUT);  // set the LED pin as an output
  Serial.begin(9600);  // open a serial connection to your computer
}

void loop() {
  // put your main code here, to run repeatedly:
  // store the value of the pot in a variable
  potVal = analogRead(potPin);

  // turn the LED on
  digitalWrite(LEDPin, HIGH);
  // delay the value of the pot
  delay(potVal);
  // turn the LED off
  digitalWrite(LEDPin, LOW);
  // delay the value of the pot
  delay(potVal);

  // print the value of the pot to the serial monitor
  Serial.println(potVal);
  
}
