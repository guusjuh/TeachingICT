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
    particles[i].levensduur = random(0, 1);
  }
}

void draw()
{
  background(0, 0, 255);
  
  fill(150, 75, 0);
  stroke(150, 75, 0);
  rect(width / 2 - 15, height/2, 30, height/2);
  
  fill(0, 255, 0);
  stroke(0, 255, 0);
  rect(0, height - 30, width, 30);
  
  for(int i = 0; i < particles.length; i++){
    particles[i].teken();
  }
}