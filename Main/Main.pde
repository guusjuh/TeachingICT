Particle particle;

void setup()
{
  size(640, 480);
  
  particle = new Particle();
  particle.xPositie = width / 2;
  particle.yPositie = height / 2;
  particle.breedte = 20;
  particle.hoogte = 20;
}

void draw()
{
  background(255, 255, 0);
  
  particle.teken();
}