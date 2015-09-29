int bluePin = 3;
int greenPin = 5;
int redPin = 6;

int rVal = 255;
int gVal = 0;
int bVal = 255;

void setup() {
  // put your setup code here, to run once:
  pinMode(bluePin, OUTPUT);
  pinMode(greenPin, OUTPUT);
  pinMode(redPin, OUTPUT);
  analogWrite(bluePin, bVal);
  analogWrite(redPin, rVal);
  //  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:

  for (int i = 0; i < 255; i=i+3) {
    gVal = i;
    bVal = 255-i;
    analogWrite(greenPin, gVal);
    analogWrite(bluePin, bVal);
    delay(33);
  }
}
