const int mySwitch = 2; // global constant
const int myLED = 9; // global constant

void setup() {
  // put your setup code here, to run once:
  pinMode(mySwitch, INPUT); // set the switch pin as an input
  pinMode(myLED, OUTPUT);   // set the LED pin as an output
  digitalWrite(myLED, LOW); // turn the LED off
}

void loop() {
  // put your main code here, to run repeatedly:

  // if the switch is HIGH
  if (digitalRead(mySwitch) == HIGH) {
    // turn the LED on
    digitalWrite(myLED, HIGH);
  } else {
    // if the switch is not pressed
    // turn the LED off
    digitalWrite(myLED, LOW);
  }
}
