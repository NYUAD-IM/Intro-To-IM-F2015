// open the serila monitor and type 
// "H" to turn the built in LED on, and "L" to turn it off

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(13, OUTPUT);
}

void loop() {
  if (Serial.available() > 0) {
    char input = Serial.read();
    if (input == 'H') {
      digitalWrite(13, HIGH);

    }
    if (input == 'L') {
      digitalWrite(13, LOW);

    }
    delay(100);
  }
}
