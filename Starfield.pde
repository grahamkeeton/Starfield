
NormalParticle [] apt;
OddballParticle tits = new OddballParticle(400,400);
JumboParticle boobs = new JumboParticle(600,600);

int a=250;
int b=250;

void setup()
{
	size(1000,1000);
	

	apt = new NormalParticle[500];
	for(int i=0;i<apt.length;i++){
		apt[i] = new NormalParticle(500,500);
			}
	
}

void draw()
{


	for (int i=0;i<apt.length;i++){
		apt[i].move();
		apt[i].show();
		
	}

	tits.move();
	tits.show();
	boobs.move();
	boobs.show();
	
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
		myAng=myAng+0.01;

	}

	void show(){
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		ellipse(myX,myY,20,20);

	}
}

interface Particle 
{
	public void move();
	public void show(); 
}

class OddballParticle //uses an interface
{
	float myX, myY, myAng, mySpe;

	OddballParticle(float x,float y){
				
				myX=x;
				myY=y;
				myAng=(float)(Math.random()*(2*Math.PI));
				mySpe=(float)(Math.random()*7)-3;

				}
	void move(){
		
		myX+=Math.cos(myAng)*(mySpe);
		myY+=Math.sin(myAng)*(mySpe);
		myAng=myAng+0.04;


	}

	void show(){
		
		fill(255);
		rect(myX,myY,30,30);
		
	}

}

class JumboParticle //uses inheritance
{

	float myX,myY,myAng,mySpe;

	JumboParticle(float x, float y){

		myX=x;
		myY=y;
		myAng=(float)(Math.random()*(2*Math.PI));
		mySpe=(float)(Math.random()*10)-5;
	}

	void move(){
		myX+=Math.cos(myAng)*(mySpe);
		myY+=Math.sin(myAng)*(mySpe);
		myAng=myAng+0.01;

	}

	void show(){
		fill(0,(int)(Math.random()*255),(int)(Math.random()*200));
		rect(myX,myY,50,50);
	}
}



