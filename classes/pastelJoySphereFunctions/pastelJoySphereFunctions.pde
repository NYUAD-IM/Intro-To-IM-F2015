float xPos; // variable for x & y pos of ball
float yPos;
float xSpeed = random(-5., 5.); // speed of ball on each axis
float ySpeed = random(-5., 5.);
float diam = 100;

void setup() {
  size(800, 600);
  background(100, 100, 200);
  noStroke();
  xPos = random(0, width);
  yPos = random(0, height);
}

void draw() {
  
  
  render();
  update();
  checkBounds();
}

void render() {
  fill(random(127, 255), random(127, 255), random(127, 255));
  ellipse(xPos, yPos, diam, diam);
}

void update() {
  xPos += xSpeed;
  yPos += ySpeed;
}

void checkBounds() {
  if (xPos > width-diam/2 || xPos < diam/2) {
    xSpeed = xSpeed* -1;
  }
  if (yPos > height-diam/2 || yPos < diam/2) {
    ySpeed = ySpeed* -1;
  }
}