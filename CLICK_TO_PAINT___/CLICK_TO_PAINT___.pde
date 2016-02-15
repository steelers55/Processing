void setup()

{
  noStroke();
  size (500, 500);
  background (255, 0, 0);
}
void draw()
{
  if ( mousePressed)
  {
    fill(random(255), random(255), random(255));
  } else
  {
    fill(random(255), random(255), random(255));
  }


  if (mousePressed)
  {
    ellipse(random(1000), random(1000), random(1000), random(1000));
    rect(random(1000), random(1000), random(1000), random(1000));
    triangle(random(1000), random(1000), random(1000), random(1000), random(1000), random(1000));
  } else
  {
    ellipse(0, 0, 0, 0);
  }

  textSize(50);
  text ("click to paint", 100, 100);
} 

