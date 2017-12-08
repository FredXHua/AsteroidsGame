class HealthBar {

	private int myX, myY, mySize, myHealth, myOffset;

	public HealthBar(int size, int offSet) {

		myX = 0;
		myY = 0;
		mySize = size;
		myHealth = 100;
		myOffset = offSet;

	}

	public void move(int x, int y) {

		myX = x - myOffset;
		myY = y + 20;

	}

	public void show(int health, int fullHealth) {

		noStroke();

		myHealth = health;

		fill(0, 255, 0);

		if((myHealth < fullHealth/2) && (myHealth >= fullHealth/4))
			fill(255, 255, 0);
		else if(myHealth < fullHealth/4)
			fill(255, 0, 0);

		rect(myX, myY, 50 * (float)((float)myHealth/(float)100), mySize * 2);

	}
}