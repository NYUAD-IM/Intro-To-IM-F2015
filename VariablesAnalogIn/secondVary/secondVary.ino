const int mySwitch = 2; // global constant
const int myLED = 9; // global constant

int switchState;  // state of the button

void setup() {
  // put your setup code here, to run once:
  pinMode(mySwitch, INPUT);
  pinMode(myLED, OUTPUT);
  digitalWrite(myLED, LOW);

}

void loop() { 
  switchState = digitalRead(mySwitch); 
  if (switchState == HIGH) {
    digitalWrite(myLED, HIGH);
  } else {
    digitalWrite(myLED, LOW);
  }
}
