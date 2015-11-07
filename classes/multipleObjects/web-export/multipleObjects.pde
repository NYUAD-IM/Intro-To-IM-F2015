Sphere mySphere0;
Sphere mySphere1;
Sphere mySphere2;
Sphere mySphere3;
Sphere mySphere4;

void setup() {
  size(800, 600);
  noStroke();
  mySphere0 = new Sphere(random(10, width-10), random(10, height-10), random(100, 200)); // this calls the constructor 
  mySphere1 = new Sphere(width/2, height/2, random(10, 100)); // this calls the constructor  mySphere0 = new Sphere(random(10, width-10), random(10, height-10), random(100, 200)); // this calls the constructor 
  mySphere2 = new Sphere(width/2, height/2, random(10, 100)); // this calls the constructor
  mySphere3 = new Sphere(random(10, width-10), random(10, height-10), random(100, 200)); // this calls the constructor 
  mySphere4 = new Sphere(width/2, height/2, random(10, 100)); // this calls the constructor
}

void draw() {
  //background(0);
  mySphere0.render();
  mySphere1.render();
  mySphere2.render();
  mySphere3.render();
  mySphere4.render();
  mySphere0.update();
  mySphere1.update();
  mySphere2.update();
  mySphere3.update();
  mySphere4.update();
  mySphere0.bounds();
  mySphere1.bounds();
  mySphere2.bounds();
  mySphere3.bounds();
  mySphere4.bounds();
}

void mousePressed(){
    mySphere0.changeSize();
  mySphere1.changeSize();
  mySphere2.changeSize();
  mySphere3.changeSize();
  mySphere4.changeSize();
}
class Sphere {
// variables for the object
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  float diam;
  color c;

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
