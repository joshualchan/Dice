
void setup()
{
	noLoop();
	size(500,500);

}
void draw()
{
	/*
	for(int x = 50;x<351;x=x+100)
		{
			rect(x,50,50,50,20);
			for(int y = 50 ; y<350; y = y+75)
				{
					rect(x,y,50,50,20);
				}
		}
		*/
	Die hello = new Die (50,50);
	hello.show();




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
		diceNum = 1;
		myX = x;
		myY = y;
	}
	/*
	void roll()
	{
		if(diceNum < 2)
			{
				fill(255);
				ellipse(myX + 25,myY + 25,10,10);
			}

	}
	*/
	void show()
	{
		rect(myX,myY, 50,50,20);

		if(diceNum < 2)
			{
				fill(0);
				ellipse(myX + 25,myY + 25,10,10);
			}
		
		
	}
}
