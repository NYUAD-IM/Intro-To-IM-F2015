const int mySwitch = 2; // global constant
const int myLED = 9;    // global constant
int switchState;        // state of the button
int buttonPress = 0;    // number of presses
int prev_button;        // state of the button from the previous loop

void setup() {
  // put your setup code here, to run once:
  pinMode(mySwitch, INPUT); // set the switch pin as an input
  pinMode(myLED, OUTPUT);   // set the LED pin as an output
  digitalWrite(myLED, LOW); // turn the LED off
}

void loop() {
  // do this over and over again forever

  // store the state of the switch in the variable
  switchState = digitalRead(mySwitch);

  // if the button is now HIGH, and it was previously LOW
  // we know the button has just been pressed
  if (switchState == HIGH && switchState != prev_button) {
    // increment the number of button presses
    buttonPress = buttonPress + 1;
  }

  // if there are 4 button presses
  if (buttonPress == 4) {
    // turn the LED on
    digitalWrite(myLED, HIGH);
    // if there are more than 4 presses
  } else if(buttonPress > 4){
    // turn the LED off
    digitalWrite(myLED, LOW);
    // reset the number of presses to 0
    buttonPress = 0;
  }
  // set the previous state to the 
  // current state for the next loop
  prev_button = switchState;

}
