class Particle{
  float xPositie;
  float yPositie;
  float breedte;
  float hoogte;
  float xRichting;
  float yRichting;
  double levensduur;
  double timer;
  
  void teken(){
    double huidigeTijd = System.currentTimeMillis();
    if(timer < huidigeTijd)
    {
      recycle();
    }

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
  
  void recycle(){
    xPositie = width / 2;
    yPositie = height / 2;
    
    timer = System.currentTimeMillis() + levensduur * 1000;
    println(timer);

    yRichting = 0;
  }
}