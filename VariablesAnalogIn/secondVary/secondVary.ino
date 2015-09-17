const int mySwitch = 2; // global constant
const int myLED = 9; // global constant

int switchState;  // state of the button

void setup() {
  // put your setup code here, to run once:
  pinMode(mySwitch, INPUT); // set the switch pin as an input
  pinMode(myLED, OUTPUT);   // set the LED pin as an output
  digitalWrite(myLED, LOW); // turn the LED off
}

void loop() {
  // store the switch state in a variable
  switchState = digitalRead(mySwitch);
  // if the switch is HIGH
  if (switchState == HIGH) {
    // turn the LED on
    digitalWrite(myLED, HIGH);
  } else {
    // if the switch is not pressed
    // turn the LED off
    digitalWrite(myLED, LOW);
  }
}
