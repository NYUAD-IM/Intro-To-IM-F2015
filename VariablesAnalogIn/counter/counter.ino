const int mySwitch = 2; // global constant
const int myLED = 9; // global constant
int switchState;  // state of the button
int buttonPress = 0; // number of presses
int prev_button;

void setup() {
  // put your setup code here, to run once:
  pinMode(mySwitch, INPUT);
  pinMode(myLED, OUTPUT);
  digitalWrite(myLED, LOW);
}

void loop() {
  switchState = digitalRead(mySwitch);

  if (switchState == HIGH && switchState != prev_button) {
    buttonPress = buttonPress + 1;
  }

  if (buttonPress == 4) {
    digitalWrite(myLED, HIGH);
  } else if(buttonPress > 4){
    digitalWrite(myLED, LOW);
    buttonPress = 0;
  }

  prev_button = switchState;

}
