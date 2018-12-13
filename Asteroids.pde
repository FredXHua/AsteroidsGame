class Asteroids extends Floater{
    public int rotateSpeed;
    public int s  = (int)(Math.random()*4)+2;
public Asteroids(){
    myCenterX = (int)(Math.random()*1000);
    myCenterY = (int)(Math.random()*1000);
    corners = 6;
    int[] xS = {(-5*s),(5*s),(8*s),(5*s),(-5*s),(-8*s)};
    int[] yS = {(5*s),(5*s),(0*s),(-5*s),(-5*s),(0*s)};
    xCorners = xS;
    yCorners = yS;
    myColor = color(120);
    rotateSpeed = (int)(Math.random()*4)-2; 
    myDirectionX = (Math.random()*2)-1;
    myDirectionY = (Math.random()*2)-1;
}
    public void setX(int x){myCenterX = x;}  
    public int getX(){return (int)myCenterX;}   
    public void setY(int y){myCenterY = y;}   
    public int getY(){return (int)myCenterY;}   
    public void setDirectionX(double x){myDirectionX = x;}   
    public double getDirectionX(){return myDirectionX;};   
    public void setDirectionY(double y){myDirectionY = y;}   
    public double getDirectionY(){return myDirectionY;}   
    public void setPointDirection(int degrees){myPointDirection = degrees;}   
    public double getPointDirection(){return myPointDirection;}
public void move(){   
    turn(rotateSpeed); 
    super.move();
    }
public void hyperSpace(){
    myDirectionY = myDirectionX = 0;
    myCenterX = (int)(Math.random()*(960)+1)+20;
    myCenterY = (int)(Math.random()*(960)+1)+20;
    myPointDirection = (int)(Math.random()*360);
}
}

