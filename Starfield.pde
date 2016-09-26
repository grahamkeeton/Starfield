
NormalParticle normie = new NormalParticle();

void setup()
{
	size(500,500);
}

void draw()
{
	normie.move();
	normie.show();

}

class NormalParticle
{
	int myColor;
	double myX,myY,mySpe,myAng;
	
	NormalParticle(){

	}

	void move(){

	}

	void show(){


	}
}

interface Particle
{
	Particle(){

	}
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

