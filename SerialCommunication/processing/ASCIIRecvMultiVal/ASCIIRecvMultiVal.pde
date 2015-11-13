import processing.serial.*;

Serial myPort;

float xPos, yPos, viz;

void setup() {

  size(800, 600);
  println(Serial.list()); 

  String portName = "/dev/tty.usbserial-DA01LJHW";

  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil('\n');
}


void draw() {
  //background(0);
  fill(viz);
  ellipse(xPos, yPos, 30, 30);
}


void serialEvent(Serial myPort) {
  String input = myPort.readString();
  String[] numbers = split(input, ',');
  float[] values = float(numbers);
  xPos = map(values[0],0 , 1023, width ,0);
  yPos = map(values[1],0 , 1023, 0 ,height);
  viz = 255;
  myPort.write('x');
}