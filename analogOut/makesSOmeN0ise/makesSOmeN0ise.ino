#include "pitches.h" 

int piezo = 2;


void setup() {
  // put your setup code here, to run once:
  pinMode(piezo, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  for (int i = 45; i < 500; i = i + 33) {
    tone(piezo, i);
    delay(100);
    noTone(piezo);
    delay(100);
  }
}
