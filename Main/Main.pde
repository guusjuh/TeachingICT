Particle particle;

void setup()
{
  size(640, 480);
  
  particle = new Particle();
  particle.xPositie = width/2;
  particle.yPositie = height/2;
}

void draw()
{
  background(0);
  particle.teken();
}