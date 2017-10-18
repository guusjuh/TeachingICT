class Particle{
  float xPositie, yPositie;
  float breedte, hoogte;
  
  Particle(float x, float y, float breedteParticle, float hoogteParticle){
    xPositie = x;
    yPositie = y;
    breedte = breedteParticle;
    hoogte = hoogteParticle;
  }
  
  void teken(){
    ellipse(xPositie, yPositie, breedte, hoogte);
  }
}