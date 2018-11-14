Star[] shine;
Spaceship rocket;

public void setup() 
{
  size(500, 500);
  frameRate(60);
  rocket = new Spaceship();
  shine = new Star[150];
  for (int i=0; i < shine.length; i++)
  shine[i] = new Star();
}
public void draw() 
{
  background(20);
  rocket.show();
  for (int i=0; i < shine.length; i++)
  shine[i].show();
  rocket.move();
}
public void keyPressed() {
  if (key == 'e') {
      rocket.hyperSpace();
  }
  if (key == 'w') {
    rocket.accelerate(0.3);
  }
  if (key == 's'){
    rocket.accelerate(-0.08);
  }
  if (key == 'a'){
    rocket.turn(-12);
  }
  if (key == 'd'){
    rocket.turn(12);
  }
  
}


