class Spaceship extends Floater{
	protected int opa;
    public Spaceship(){
		myCenterX = myCenterY = 500;
        corners = 11;	
		int[] xS = {16, 9, 1, -3, -11, -8, -8, -11, -3, 1, 9};
		int[] yS = {0, -6, -5, -8, -7, -4, 4, 7, 8, 5, 6};
		xCorners = xS;
		yCorners = yS;
        myColor = color(0);
        myStroke = 255;
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
        myDirectionY = myDirectionX = 0;
        myCenterX = (int)(Math.random()*(960)+1)+20;
     	myCenterY = (int)(Math.random()*(960)+1)+20;
        myPointDirection = (int)(Math.random()*360);
    } 
}


