int LDRPin = A0;  // pon the sensor is attached to
int LEDPin = 9;  // pin the LED is attached to
int LDRVal = 0;  // value of the sensor

void setup() {
  // put your setup code here, to run once:
  pinMode(LEDPin, OUTPUT);  // set the LED pin as an output
  Serial.begin(9600);  // open a serial connection to your computer
}

void loop() {

  int mappedVal; // local variable for mapping
  // store the value of the sensor in a variable
  LDRVal = analogRead(LDRPin);
  // map the values from one range to another
  mappedVal = map(LDRVal, 520, 920, 100, 500);

  // turn the LED on
  digitalWrite(LEDPin, HIGH);
  // delay the mapped value
  delay(mappedVal);
  // turn the LED off
  digitalWrite(LEDPin, HIGH);
  // delay the mapped value
  delay(mappedVal);

  // print the raw sensor value to the serial monitor
  Serial.print("sensor Value :" );
  Serial.print(LDRVal);
  // print the mapped sensor value to the serial monitor
  Serial.print(", mapped Value : ");
  Serial.println(mappedVal);

}
