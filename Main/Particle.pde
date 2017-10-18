class Particle{
  float xPositie;
  float yPositie;
  float breedte;
  float hoogte;
  float xRichting;
  float yRichting;
  
  void teken(){
    berekenVerplaatsing();
    
    fill(255, 0, 0);
    stroke(0, 0, 255);
    ellipse(xPositie, yPositie, breedte, hoogte);
  }
  
  void berekenVerplaatsing(){
    yRichting += 0.1f;//zwaartekracht trekt het object omlaag
    xPositie += xRichting;
    yPositie += yRichting;
  }
  
  void willekeurigePositie(){
    xPositie = random(0, width);
    yPositie = random(0, height);
  }
}