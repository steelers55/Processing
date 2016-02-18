import ddf.minim.*;
Minim minim;
AudioSample sound;
PImage backgroundImage;
PImage troll2;
boolean troll = false;
import javax.swing.JOptionPane;
void setup () {
  size(700, 700);
  minim = new Minim (this);
  sound = minim.loadSample("Darude - Sandstorm.wav");
  backgroundImage = loadImage("troll.jpg");
  troll2 = loadImage("trollone.png");
  troll2.resize(100,100);
  JOptionPane.showMessageDialog(null, "i swaer if u press teh mawse u wil die\nand teh wolrd wlil bowl up");
}
int speedy = 9;
int speedx = 8;
int x = 350;
int y = 350;
void draw () {
  background(random (255), random (255), random (255));

  if (troll) {
    image(backgroundImage, 0, 0);
  }
  fill(random (255), random (255), random (255));
  ellipse(x, y, 50, 50);
  stroke(random (255), random (255), random (255));
  fill(random (255), random (255), random (255));
  rect(mouseX - 100, 670, 200, 10); 
  if (troll) {
    image(troll2, mouseX, mouseY);
    if (intersects(x, y, mouseX - 100, mouseY-5, 200)) {
      speedy = -speedy;
    }
  }
  if (intersects(x, y, mouseX - 100, 670, 200)) {
    speedy = -speedy;
  }
  if (mousePressed) {
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

