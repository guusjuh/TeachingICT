class Particle{
  float xPositie;
  float yPositie;
  float breedte;
  float hoogte;
  
  void teken(){
    ellipse(xPositie, yPositie, breedte, hoogte);
  }
}