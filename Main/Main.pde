Particle[] particle;
int amount;

void setup()
{
  size(640, 480);
  
  amount = 10;
  
  particle = new Particle[amount];
  for(int i = 0; i<amount; i++)
  {
    float dirX = random(-10, 10);
    float dirY = random(-10, 10); 
    particle[i] = new Particle(320, 240, 20, 80, dirX, dirY, color(255,0,0));
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