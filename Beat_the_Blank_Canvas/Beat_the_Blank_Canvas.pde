void setup() {
  size(800, 800);
}

void draw() {
  noStroke();  
  //2. make it a nice color
  fill(255, 255, 255);
  //3. if the mouse is pressed, fill the circle with a different color          
  if (mousePressed)
  {
    fill(random(255), random(255), random(255));
  }

  //1. draw an ellipse
  ellipse(random(800), random(800), random(255), random(255));
}
// Copyright Wintriss Technical Schools 2013



