class Sphere {
  // variables for the object
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  float diam;
  float red;
  float green;
  float blue;
  float alpha;

  Sphere() {
    red =random(0, 255);
    green = random(0, 255);
    blue = random(0, 255);
    alpha = random(127, 255);
    xPos = mouseX;
    yPos = mouseY;
    xSpeed = random(-5., 5.);
    ySpeed = random(-5., 5.);
    diam = 100;
  }

  boolean isDead() {
    if (alpha <= 0) {
      return true;
    } else {
      return false;
    }
  }
  // declare all my functions
  void render() {
    alpha -=3;
    diam--;
    fill(red, green, blue, alpha);
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