class Spaceship extends Floater{
	public Spaceship(){
		myCenterX = myCenterY = 250;
		corners = 11;	
		int[] xS = {16, 9, 1, -3, -11, -8, -8, -11, -3, 1, 9};
		int[] yS = {0, -6, -5, -8, -7, -4, 4, 7, 8, 5, 6};
		xCorners = xS;
		yCorners = yS;
        myColor = color(255);
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
    
    public void hyperSpace(){
     	myCenterX = (int)(Math.random()*(460)+1)+20;
     	myCenterY = (int)(Math.random()*(460)+1)+20;
     	myDirectionX = myDirectionY = 0;
     	for (int i=0; i < shine.length; i++)
     	shine[i].reset();
    } 

}

