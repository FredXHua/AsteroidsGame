Star[] shine;
Spaceship rocket;
boolean ePressed, wPressed, aPressed, sPressed, dPressed = false;

public void setup() 
{
  size(500, 500);
  frameRate(60);
  rocket = new Spaceship();
  shine = new Star[130];
  for (int i=0; i < shine.length; i++)
  shine[i] = new Star();
}
public void draw() 
{
  background(20);
  if(wPressed == true){rocket.accelerate(0.15);}
  if(sPressed == true){rocket.accelerate(-0.03);}
  if(aPressed == true){rocket.turn(-5);}
  if(dPressed == true){rocket.turn(5);}
  for (int i=0; i < shine.length; i++)
  shine[i].show();  
  rocket.show();
  rocket.move();
}
public void keyPressed(){
  if (key == 'e') {
    rocket.hyperSpace(); 
  }
  if (key == 'w') {
    wPressed = true;
  }
  if (key == 's'){
    sPressed = true;
  }
  if (key == 'a'){
    aPressed = true;
  }
  if (key == 'd'){
    dPressed = true; 
  }
}
public void keyReleased(){
  if (key == 'w') {
    wPressed = false; 
  }
  if (key == 's'){
    sPressed = false;
  }
  if (key == 'a'){
    aPressed = false;
  }
  if (key == 'd'){
    dPressed = false;
  }
}



