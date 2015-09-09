void setup() {
  // put your setup code here, to run once:
  pinMode(2, OUTPUT);
  pinMode(3, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  // if the button is pressed
  if (digitalRead(3) == HIGH) {
    digitalWrite(2, HIGH);  // turn the LED on
  } else {                // if the statement above is not true
    digitalWrite(2, LOW); // turn the LED off
  }

}
