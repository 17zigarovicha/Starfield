//your code here
void setup()
{
	//your code here
}
void draw()
{
	//your code here
}
class NormalParticle
{
	//your code here
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}


/////code from class/////
Particle [] normal;
void setup()
{
  size(500, 500);
  normal = new Particle[100];
  for(int i = 0; i < normal.length; i++){
     normal[i] = new Particle();
}
void draw()
{
 background(66, 134, 244);
  for(int i = 0; i < normal.length; i++){
     normal[i].move();
     normal[i].show();
}
}
class NormalParticle
{
 double dx, dy, dTheta, dspeed;
 Particle(){
  myX = 250;
  myY = 250;
 } 
}

void show(){
    fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255)); //random colored dots
    ellipse(myX, myY, 50, 50);
  } 
  
interface Particle
{
  //your code here
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}

