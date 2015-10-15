
void setup() {
  size(800, 600);
  background(200, 10, 200);
  //noStroke();
  //fill(180, 180, 10);
  //rect(100, 100, 600, 400);
}

void draw() {
  //background(200, 10, 200);
  //noStroke();
  //fill(180, 180, 10);
  //rect(100, 100, 600, 400);
  
  stroke(0);
  strokeWeight(10);
  //line(width/2, height/2, mouseX, mouseY);
  ellipse(mouseX, mouseY, 40, 40);
}