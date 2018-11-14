Spaceship rocket;
Star[] shine;
int timer = 0;
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
    if (timer == 0) {
      rocket.hyperSpace();
      timer = 1;
    }
  }
  if (key == 'w') {
    rocket.accelerate(0.2);
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
public void timer(){
    if (timer > 0 && timer < 30)
  {
    timer = timer + 1;
  }
  if (timer == 30)
    timer = 0;
}

