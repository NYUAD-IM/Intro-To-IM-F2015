String myText = "this is awesome!";

println("my awesome text");
println(myText);

size(400, 400);
background(0);

fill(200, 10, 180);
text(myText, 10, 10);

textSize(32);
text(myText, 10, 50);

PFont myFont = createFont("Georgia", 64);

textFont(myFont);
text(myText, 10, 150);

PFont myBetterFont = loadFont("Wingdings2-48.vlw");
textFont(myBetterFont);
text(myText, 10, 250);

textFont(myFont);

float fontWidth = 10;
for(int i = 0; i<myText.length();i++){
  char c = myText.charAt(i);
  fill(random(127,255));
  textSize(random(10, 64));
  text(c, fontWidth, 300);
  fontWidth=fontWidth+textWidth(c);
  
}