Star[] shine;
Spaceship rocket;
ArrayList <Asteroids> rock;
ArrayList <Bullet> shots;
boolean ePressed, wPressed, aPressed, sPressed, dPressed = false;

public void setup() 
{
  size(1000,1000);
  frameRate(60);
  rocket = new Spaceship();
  shine = new Star[130];
  rock = new ArrayList <Asteroids>();
  for(int i = 0; i < shine.length; i++)
    shine[i] = new Star();
  for(int n = 0; n < 15; n++)
    rock.add(new Asteroids());
  for(int s = 0; s < 1; s++)
    shots.add(new Bullet(Spaceship);
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
  for(int n = 0; n < rock.size(); n++){
  rock.get(n).show();
  rock.get(n).move();   
 }
  for(int s = 0; n < shots.size(); s++)
  shots.get(s).show();
  rocket.show();
  rocket.move();
  collide();
}
public void collide(){
  for(int i = 0; i < rock.size(); i++){
    if(dist(rock.get(i).getX(), rock.get(i).getY(), rocket.getX(), rocket.getY()) <= (rock.get(i).s)*10) 
    System.out.println("O");
  }
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



