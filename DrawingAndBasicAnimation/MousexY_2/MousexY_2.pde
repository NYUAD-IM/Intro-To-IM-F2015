
void setup() {
  size(800, 600);
  background(200, 10, 200);
  noStroke();
 
}

void draw() {
  float red = map(mouseX, 0, width, 0, 255);
  float blue = map(mouseY, 0, height, 0, 255);
  
  background(red, 10, blue);

  ellipse(mouseX, mouseY, 40, 40);
}