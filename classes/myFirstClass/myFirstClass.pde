Sphere mySphere;

void setup() {
  size(800, 600);
  
  mySphere = new Sphere(); // this calls the constructor
}

void draw() {
  background(0);
  mySphere.render();
  mySphere.update();
  mySphere.bounds();
}