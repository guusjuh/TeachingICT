Particle[] particles;

void setup()
{
  size(640, 480);
  
  particles = new Particle[100];
  for(int i = 0; i < particles.length; i++){
    particles[i] = new Particle();
    
    particles[i].xPositie = width / 2 + 80 * (i-1);
    particles[i].yPositie = height / 2;
    particles[i].breedte = 20;
    particles[i].hoogte = 20;
  }
}

void draw()
{
  background(255, 255, 0);
  
  for(int i = 0; i < particles.length; i++){
    particles[i].teken();
  }
}