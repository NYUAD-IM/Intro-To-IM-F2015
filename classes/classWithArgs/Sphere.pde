class Sphere {
// variables for the object
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  float diam;

  Sphere(float x_, float y_, float d_) { /// this is the constructor
    xPos = x_;
    yPos = y_;
    xSpeed = 1.5;
    ySpeed = 1.3;
    diam = d_;
  }
  // declare all my functions
  void render() {
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
}