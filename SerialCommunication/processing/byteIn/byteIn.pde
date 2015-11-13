import processing.serial.*;

Serial myPort;

float xPos;

void setup() {
  size(800, 600);
  //println(Serial.list());
  String portName = "/dev/tty.usbserial-DA01LJHW";

  myPort = new Serial(this, portName, 9600);
}


void draw() {
  background(0);
  ellipse(xPos, height/2, 20, 20);
}

void serialEvent(Serial  myPort) {

  xPos = map(myPort.read(), 0, 255, 0, width);
}