void setup() {
  // put your setup code here, to run once:
  pinMode(2, OUTPUT); // LED attached to pin 2
  pinMode(3, INPUT);  // button attached to pin 3
  pinMode(4, INPUT);  // button attached to pin 4
}

void loop() {
  // put your main code here, to run repeatedly:

  //  this if statement has an 'and'
  //  if both buttons are pressed at the same time
  //  if (digitalRead(3) == HIGH && digitalRead(4) == HIGH) {

  // this if statement has an 'or'
  // if either button is pressed
  if (digitalRead(3) == HIGH || digitalRead(4) == HIGH) {
    digitalWrite(2, HIGH); // turn the LED on
    delay(100);            // wait a moment
    digitalWrite(2, LOW);  // turn the LED off
    delay(100);            // wait a moment
  } else {                // if the statement above is not true
    digitalWrite(2, LOW); // turn the LED off
  }

}
