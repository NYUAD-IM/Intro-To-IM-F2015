float rot = 0.0;

void setup() {
  size(800, 600); 
  rectMode(CENTER);
}


void draw() {
  background(0);
  rot +=1.0;
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rot));
  rect(0, 0, 200, 200);
  popMatrix();

  pushMatrix();
  translate(width/4, height/4);
  rotate(radians(rot*2));
  rect(0, 0, 100, 50);
  popMatrix();

  rect(width/2, height/2, 100, 100);
}