
NormalParticle [] apt;

void setup()
{
	size(500,500);

	apt = new NormalParticle[100];
	for(int i=0;i<apt.length;i++){
		apt[i] = new NormalParticle(250,250);
	}

}

void draw()
{

	for (int i=0;i<apt.length;i++){
		apt[i].move();
		apt[i].show();
	}

}

class NormalParticle
{
	int myColor;
	float myX,myY,mySpe,myAng;
	
	NormalParticle(int x, int y){

		myX=x;
		myY=y;
		myAng=5;
		mySpe=5;
		myColor = 20;
	}

	void move(){
		myX+=(int)((Math.random()*7)+3);
		myY+=(int)((Math.random()*7)+3);

	}

	void show(){
		fill(255,0,0);
		ellipse(myX,myY,10,10);

	}
}

interface Particle
{
	//Particle(){
		//public void move();
		//public void show();
	//}
}

class OddballParticle //uses an interface
{
	OddballParticle(){

	}
}

class JumboParticle //uses inheritance
{
	JumboParticle(){

	}
}

