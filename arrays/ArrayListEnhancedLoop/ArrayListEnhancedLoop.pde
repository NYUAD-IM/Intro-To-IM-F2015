ArrayList<Sphere> spheres;

void setup() {
  size(800, 600);
  //noStroke();
  spheres = new ArrayList<Sphere>();
  background(255);
}


void draw() {
  background(255);
  spheres.add(new Sphere());

  for (Sphere s : spheres) {
    s.update();
    s.render();
    s.bounds();
  }
}