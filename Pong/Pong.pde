void setup () {
  size(700, 700);
}
int x = 350;
int y = 350;
void draw () {
  background(30, 30, 255);
  fill(255, 0, 0);
  ellipse(x, y, 50, 50);
  stroke(255, 0, 0);
 
  if (x > 700) {
    x-= 3;
  } else
    if (x < 0) {
    x+= 3;
  } else
    if (x > 0 && x < 700) {
      x+=3;
  }
}

