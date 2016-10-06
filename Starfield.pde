
NormalParticle [] apt;
//OddballParticle kuku = new OddballParticle(400,400);
//JumboParticle donezo = new JumboParticle(600,600);


Particle[] colony;


void setup()
{
	size(1000,1000);
	

	/*
	apt = new NormalParticle[500];
	for(int i=0;i<apt.length;i++){
		apt[i] = new NormalParticle(500,500);
			}
		apt[0]= new OddballParticle();
*/

	
		
		colony = new Particle[300];
		for(int i=0;i<colony.length;i++){
		colony[i]= new NormalParticle();
		
}
colony[0]=new OddballParticle();
colony[1]=new JumboParticle();
}

void draw()
{


	for (int i=0;i<colony.length;i++){
		colony[i].move();
		colony[i].show();
		
	}

	//donezo.move();
	//donezo.show();
	
}

class NormalParticle implements Particle
{
	int myColor;
	float myX,myY,mySpe,myAng;
	
	NormalParticle(){

		myX=500;
		myY=500;
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

class OddballParticle implements Particle//uses an interface
{
	float myX, myY, myAng, mySpe;

	OddballParticle(){
				
				myX=(int)(Math.random()*1000);
				myY=(int)(Math.random()*1000);
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
		ellipse(myX,myY,40,40);
		fill(0);
		ellipse(myX-10,myY-10,5,5);
		ellipse(myX+10,myY-10,5,5);
		rect(myX-5,myY,10,10);
		
	}

}

class JumboParticle extends NormalParticle
{

void show(){
	fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	ellipse(myX,myY,100,100);
}

}


