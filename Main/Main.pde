Particle[] particle;
int amount;

void setup()
{
  size(640, 480);
  
  amount = 10;
  
  particle = new Particle[amount];
  for(int i = 0; i<amount; i++)
  {
    particle[i] = new Particle(320, 240, 20, 80, color(255,0,0));
    particle[i].setup();
  }
}

void draw()
{
  background(0);
  for(int i = 0; i < amount; i++)
  {
    particle[i].draw();
  }
}