Particle [] normal;

void setup()
{
size(500,500);
normal = new Particle[100];
for (int i = 0; i<normal.length; i++)
{
  normal[1]= new OddballParticle();
  normal[2]= new JumboParticle();
  normal[i]= new NormalParticle();
}
}

void draw()
{
fill(0, 0, 0, 33);
rect(0, 0, 500, 500);
for (int i = 0; i <normal.length; i++)
{
  normal[i].move();
  normal[i].show();
}  
}

class NormalParticle implements Particle
{
  int col;
  double x,y,angle,speed,a,b;
  NormalParticle()
  {
  x = 250;
  y = 250;
  angle = (Math.random()*2*Math.PI);
  speed = (Math.random()*3);
  col = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  
  public void move()
  {
  a = Math.cos(angle)*speed;
  b = Math.sin(angle)*speed;
  x = x - a;
  y = y - b;
  if(x>501 || y>501)
  {
    x = 250;
    y = 250;
  }
  else 
  if (x<0 || y<0) 
  {
    x = 250;
    y = 250;  
  }
  }
  
  public void show()
  {
  noStroke();
  fill(col);
  ellipse((float)x,(float)y,30,30);
  }
}

interface Particle
{
public void show();
public void move();
}

class OddballParticle implements Particle//uses an interface
{
  int col,x,y,z,a,b;
  OddballParticle()
  {
  x = (int)(Math.random() *499);
  y = (int)(Math.random() *499);
  col = color((int)(Math.random()*5)+250,(int)(Math.random()*5)+250,(int)(Math.random()*5)+250);
  }
  
  public void show()
  {
  noStroke();
  fill(66, 144, 234);
  rect((float)x,(float)y,45,45);
  }
  
  public void move()
  {
  a = (int)(Math.random()*6)-2;
  b = (int)(Math.random()*4)-2;
  x = x+a;
  y = y+b;
   if(x>501 || y>501)
  {
    x=250;
    y=250;
  }
  else 
  if (x<0 || y<0) 
  {
    x=250;
    y=250;  
  }
  }  
}

class JumboParticle extends NormalParticle//uses inheritance
{
public void show()
{
  fill(66, 244, 152);
  ellipse((float)x,(float)y,75,75);
}
}
