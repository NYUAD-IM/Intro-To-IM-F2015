void setup() {
  // put your setup code here, to run once:
  pinMode(2, OUTPUT); // LED attached to pin 2
  pinMode(3, INPUT);  // button attached to pin 3
}

void loop() {
  // put your main code here, to run repeatedly:

  // if the button is pressed
  if (digitalRead(3) == HIGH) {
    digitalWrite(2, HIGH); // turn the LED on
    delay(100);            // wait a moment
    digitalWrite(2, LOW);  // turn the LED off
    delay(100);            // wait a moment
  } else {                // if the statement above is not true
    digitalWrite(2, LOW); // turn the LED off
  }

}
