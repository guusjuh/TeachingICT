Particle[] particles;

void setup()
{
  size(640, 480);
  
  particles = new Particle[100];
  for(int i = 0; i < particles.length; i++){
    particles[i] = new Particle();
    
    particles[i].breedte = 20;
    particles[i].hoogte = 20;
    //stel in hoeveel seconden het object actief blijft
    particles[i].levensduur = 2;
  }
}

void draw()
{
  background(255, 0, 0);
  
  for(int i = 0; i < particles.length; i++){
    particles[i].teken();
  }
}