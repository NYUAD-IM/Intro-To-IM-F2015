int draw = 0;
int weight = 50;

void setup() {
  size(800, 600);
  background(200, 10, 200);
  noStroke();
}

void draw() {

  if (draw == 1) {
    ellipse(mouseX, mouseY, weight, weight);
  }
}

void mousePressed() {
  draw = 1;
}
void mouseReleased() {
  draw = 0;
}

void keyPressed() {
  float red = map(mouseX, 0, width, 0, 255);
  float blue = map(mouseY, 0, height, 0, 255);
  background(red, 10, blue);
  
  if(key == '-'){
    weight-=5;
  }
  if(key == '+'){
   weight+=5; 
  }
  println(weight);
}