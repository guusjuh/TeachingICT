Particle[] particles;
int amount;

void setup()
{
  size(640, 480);
  
  amount = 10;
  
  particles = new Particle[amount];
  for(int i = 0; i < particles.length; i++)
  {
    particles[i] = new Particle(320, 240, 20, 20, color(255,0,0));
    particles[i].setup();
  }
}

void draw()
{
  background(0);
  for(int i = 0; i < amount; i++)
  {
    particles[i].draw();
  }
}