ArrayList<Sphere> spheres;   // arraylist full of sphere called spheres

void setup() {
  size(800, 600);
  noStroke();
  spheres = new ArrayList<Sphere>();
}

void draw() {
  background(255); 
  spheres.add(new Sphere()); // add every frame

  for (int i = spheres.size()-1; i>=0; i--) { // manipulate the objects
    Sphere s = spheres.get(i);
    s.update();
    s.render();
    s.bounds();
    if (s.isDead()) {
      spheres.remove(i);
    }
  }
}