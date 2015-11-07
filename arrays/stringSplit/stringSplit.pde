String data = "100,20,10,180,250"; //CSV
float[] numbers = float(split(data, ","));

noFill();
size(400, 400);
for (int i = 0; i<numbers.length; i++) {
  println(numbers[i]);
  ellipse(i*50, width/2, numbers[i], numbers[i]);
}