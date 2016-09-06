
void setup()
{
	noLoop();
	size(500,500);
}
void draw()
{

	for(int x = 50;x<450;x=x+75)
	{
		rect(x,50,40,40,25);
	}


}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY;
	int diceNum;
	//variable declarations here
	Die(int x, int y) //constructor
	{
		diceNum = (int)(Math.random()*7)+1;
		myX = x;
		myY = y;
	}
	void roll()
	{
		if(diceNum < 2)
			{
				ellipse(myX,myY,10,10);
			}
		
	}
	void show()
	{
		
	}
}
