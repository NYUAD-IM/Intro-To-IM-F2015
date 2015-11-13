import processing.serial.*;

Serial myPort;

float xPos;

void setup() {
  size(800, 600);
  //println(Serial.list());
  String portName = "/dev/tty.usbserial-DA01LJHW";

  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil('\n');
}


void draw() {
  background(0);
  ellipse(xPos, height/2, 20, 20);
}

void serialEvent(Serial  myPort) {
  String number = myPort.readString();
  float val = float(number);
  println(val);
  xPos = map(val, 0, 1023, 0, width);
}