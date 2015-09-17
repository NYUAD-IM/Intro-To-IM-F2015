const int mySwitch = 2; // global constant
const int myLED = 9; // global constant

void setup() {
  // put your setup code here, to run once:
  pinMode(mySwitch, INPUT);
  pinMode(myLED, OUTPUT);
  digitalWrite(myLED, LOW);
}

void loop() {
  // put your main code here, to run repeatedly:
  if (digitalRead(mySwitch) == HIGH) {

    digitalWrite(myLED, HIGH);
  } else {

    digitalWrite(myLED, LOW);
  }
}
