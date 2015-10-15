size(800, 600); // sets the size of the window

//println("Hello World");

point(100, 100); // draw a point at the specified location

line(100, 200, 300, 200); // draw a line!

rect(100, 300, 200, 200); // draw a rectangle (top left corner, width, height)

rectMode(CENTER); // draw the rectangle that is positioned from the center

rect(200, 400, 60, 30);  //  draw a rectangle (center, width, height)
rect(200, 400, 50, 50); 

// draw some differently colored circles
ellipse(200, 100, 50, 50); // center point , width, height

noStroke(); // remove the stroke line
ellipse(300, 100, 50, 50);

stroke(255); // make the stroke white
noFill(); // remove the center color
ellipse(400, 100, 50, 50);
stroke(0); // make the stroke black
ellipse(410, 100, 50, 50);

strokeWeight(5); // make the stroke thicker
ellipse(500, 100, 50, 50);

noStroke();
fill(200); // change the center color
ellipse(600, 100, 50, 50);

fill(220, 10, 200); // change the center color's red, green, & blue values
ellipse(700, 100, 50, 50);

stroke(200, 160, 10);
fill(220, 10, 200);
ellipse(700, 200, 50, 50);