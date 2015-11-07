class Sphere {
// variables for the object
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  float diam;
  color c;

 Sphere() { /// this is the constructor
  c = color(random(0, 255),random(0, 255),random(0, 255),random(0, 255));
    xPos = height/2;
    yPos = width/2;
    xSpeed = random(-3., 5.);
    ySpeed = random(-3., 5.);
    diam = 100;
  }


  Sphere(float x_, float y_, float d_) { /// this is the constructor
  c = color(random(0, 255),random(0, 255),random(0, 255),random(0, 255));
    xPos = x_;
    yPos = y_;
    xSpeed = random(-3., 5.);
    ySpeed = random(-3., 5.);
    diam = d_;
  }
  // declare all my functions
  void render() {
    fill(c);
    ellipse(xPos, yPos, diam, diam);
  }

  void update() {
    xPos+=xSpeed;
    yPos+=ySpeed;
  }

  void bounds() {
    if (xPos >= width || xPos <= 0) {
      xSpeed = xSpeed * -1;
    }
    if (yPos >= height || yPos <= 0) {
      ySpeed = ySpeed * -1;
    }
  }
  
 void changeSize() {
    diam = random(100, 200);
  }
  
}