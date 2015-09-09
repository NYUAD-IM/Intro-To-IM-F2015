void setup() {
  // put your setup code here, to run once:
  pinMode(2, OUTPUT);  // configure pin 2 as output
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(2, HIGH);   // PULL PIN 2 HIGH
  delay(250);       // wait for a quarter of second
  digitalWrite(2, LOW);    // Pull Pin 2 LOW
  delay(250);       // wait for a quarter of second
}
