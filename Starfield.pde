
NormalParticle [] apt;
OddballParticle [] toot;

void setup()
{
	size(500,500);
	background(0);

	apt = new NormalParticle[100];
	for(int i=0;i<apt.length;i++){
		apt[i] = new NormalParticle(250,250);
	}
	toot = new OddballParticle[100];
	for(int i=0;i<toot.length;i++){
		toot[i] = new OddballParticle(250,250);
	}

}

void draw()
{

	for (int i=0;i<toot.length;i++){
		toot[i].move();
		toot[i].show();
	}

	for (int i=0;i<apt.length;i++){
		apt[i].move();
		apt[i].show();
		
	}
	
}

class NormalParticle
{
	int myColor;
	float myX,myY,mySpe,myAng;
	
	NormalParticle(float x, float y){

		myX=x;
		myY=y;
		myAng=(float)(Math.random()*(2*Math.PI));
		mySpe=(float)(Math.random()*7)-3;
		myColor = 20;
	}

	void move(){

		myX+=Math.cos(myAng)*(mySpe);
		myY+=Math.sin(myAng)*(mySpe);

	}

	void show(){
		fill(255,0,0);
		ellipse(myX,myY,10,10);

	}
}

interface Particle 
{
	public void move();
	public void show(); 
}

class OddballParticle //uses an interface
{
	float myX,myY,myAng,mySpe;

	OddballParticle(float x,float y){
			myX=x;
			myY=y;
			myAng=(float)(2*Math.PI);
			mySpe=3;

				}
	void move(){
		myX+=Math.cos(myAng)*(mySpe);
		myY+=Math.sin(myAng)*(mySpe);
	}

	void show(){
		fill(0,0,255);
		ellipse(myX,myY,10,10);
		if (myX>600&&myY>600){
			myX=250;
			myY=250;
		}
	}

}

class JumboParticle //uses inheritance
{
	JumboParticle(){

	}
}

