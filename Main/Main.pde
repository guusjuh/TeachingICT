Particle particle;

void setup()
{
  size(640, 480);
  
  particle = new Particle(100, 100, 10, 10);
}

void draw()
{
  background(0);
  particle.teken();
}