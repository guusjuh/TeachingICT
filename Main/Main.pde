Particle particle;

void setup()
{
  size(640, 480);
  
  particle = new Particle(100, 100, 10, color(255,0,0));
}

void draw()
{
  background(0);
  particle.draw();
}