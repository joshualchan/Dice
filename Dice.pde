int count = 0;
void setup()
{
	noLoop();
	size(500,500);

}
void draw()
{
	
	background(255);
	int a,b;
	for(a = 50 ; a< 450 ; a=a+100){
		
		for(b=50 ; b<400 ; b = b + 100){
			Die hello = new Die (a,b);
			hello.show();
			hello.sumDice();
			
		}
		


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
		diceNum = (int)(Math.random()*6+1);
		myX = x;
		myY = y;
		count = count + diceNum ;
	}

	

	void show()
	{

		fill(255);
		rect(myX,myY,80,80,20);

		fill(0);
		if(diceNum < 2)
			{
				
				ellipse(myX +40,myY + 40,10,10);
			}
			else if (diceNum < 3) {
				ellipse(myX +60 ,myY+20,10,10);
				ellipse(myX + 20 ,myY +60,10,10);
				
			}
			else if (diceNum < 4) {
				ellipse(myX + 40,myY + 40,10,10);
				ellipse(myX +60 ,myY+20,10,10);
				ellipse(myX + 20 ,myY +60,10,10);
			}
			else if(diceNum < 5){
				ellipse(myX +60,myY +60,10,10);
				ellipse(myX + 20,myY+20,10,10);
				ellipse(myX +60 ,myY+20,10,10);
				ellipse(myX + 20 ,myY +60,10,10);
			}
			else if(diceNum < 6){
				ellipse(myX+40,myY+40,10,10);
				ellipse(myX +60,myY +60,10,10);
				ellipse(myX + 20,myY+20,10,10);
				ellipse(myX +60 ,myY+20,10,10);
				ellipse(myX + 20 ,myY +60,10,10);
			}
			else if(diceNum < 7){
				ellipse(myX +20,myY+40,10,10);
				ellipse(myX +60,myY + 40,10,10);
				ellipse(myX +60,myY +60,10,10);
				ellipse(myX + 20,myY+20,10,10);
				ellipse(myX +60 ,myY+20,10,10);
				ellipse(myX + 20 ,myY +60,10,10);
			}
			
			
	}
	void sumDice(){
		fill(255);

		rect(20,460,200,50);

		fill(0);
		text("Sum of dice: " + count,40,480);
				
			}
			
	
}
