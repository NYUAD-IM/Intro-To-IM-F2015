float[] myArray; // declare 

float[] myEggs = {10.3, -4.8, 100.00045, 1.};

float[] scottsArray = new float[100];

size(800, 600);

scottsArray[0] = 100.0;

scottsArray[17]= 52.4;

//println(scottsArray[8]);

ellipse(scottsArray[17], scottsArray[17], scottsArray[0], scottsArray[0]);

for(int x = 0; x < 100; x++){
  scottsArray[x] = x*2.3;
  println(scottsArray[x]);
}