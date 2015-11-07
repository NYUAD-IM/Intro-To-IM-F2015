Sphere[] mySpheres = new Sphere[100];

int counter = 1;
int counterDir = 1;

void setup() {
  size(800, 600, FX2D);
  noStroke();
  for (int x = 0; x<mySpheres.length; x++) {
    mySpheres[x] = new Sphere(x+1); // this calls the constructor
  }
    background(255);

}

void draw() {

  for (int x = 0; x<mySpheres.length; x++) {
    mySpheres[x].render();
    mySpheres[x].update();
    mySpheres[x].bounds();
  }
}

void mousePressed(){
  counter+=counterDir;
  if (counter == 99 || counter == 0){
    counterDir = counterDir*-1;
  }
}