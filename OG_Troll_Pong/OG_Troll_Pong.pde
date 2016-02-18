import ddf.minim.*;
Minim minim;
AudioSample sound;
void setup () {
  size(700, 700);
    minim = new Minim (this);
  sound = minim.loadSample("Darude - Sandstorm.wav");
  backgroundImage = loadImage("troll.jpg");
}
int speedy = 9;
int speedx = 8;
int x = 350;
int y = 350;
void draw () {
  background(random (255),random (255),random (255));
  fill(random (255),random (255),random (255));
  ellipse(x, y, 50, 50);
  stroke(random (255),random (255),random (255));
  fill(random (255),random (255),random (255));
  rect(mouseX - 100, 670, 200, 10); 
  if(intersects(x, y, mouseX - 100, 670, 200)) {
    speedy = -speedy;
    
  }
  if(mousePressed){
    sound.trigger();
    troll = true;
  }
  x += speedx;
  y += speedy;
  if (x > 700) {
    speedx =- speedx;
  } else
    if (x < 0) {
    speedx = -speedx;
  } 

    if (y < 0) {
    speedy =-speedy;
  }
}

boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
  if (ballY > paddleY - paddleLength && ballX > paddleX && ballX < paddleX + paddleLength)
    return true;
  else 
    return false;
}

