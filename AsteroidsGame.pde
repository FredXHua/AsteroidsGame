Star[] shine;
Spaceship rocket;
Asteroids[] rock;
boolean ePressed, wPressed, aPressed, sPressed, dPressed = false;

public void setup() 
{
  size(500, 500);
  frameRate(60);
  rocket = new Spaceship();
  shine = new Star[130];
  rock = new Asteroids[13];
  for(int i = 0; i < shine.length; i++)
    shine[i] = new Star();
  for(int n = 0; n < rock.length; n++)
    rock[n] = new Asteroids();
}
public void draw() 
{
  background(20);
  if(wPressed == true){rocket.accelerate(0.10);}
  if(sPressed == true){rocket.accelerate(-0.03);}
  if(aPressed == true){rocket.turn(-4);}
  if(dPressed == true){rocket.turn(4);}
  for (int i=0; i < shine.length; i++)
  shine[i].show();
  for(int n = 0; n < rock.length; n++){
  rock[n].show();
  rock[n].move();   
 }
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
  if (key == 'e') {
    ePressed = false; 
  }
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



