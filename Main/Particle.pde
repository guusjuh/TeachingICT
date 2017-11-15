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
    
    fill(0, 0, 255);
    stroke(255, 255, 255);
    ellipse(xPositie, yPositie, breedte, hoogte);
    ellipse(xPositie, yPositie + hoogte * 1.5f, breedte*2, hoogte*2);
  }
  
  void berekenVerplaatsing(){
    yRichting += 0.1f;//zwaartekracht trekt het object omlaag
    xPositie += xRichting;
    yPositie += yRichting;
  }
  
  void recycle(){
    xPositie = width / 2;
    yPositie = height / 2;
    
    //stel de tijdswaarde in voor wanneer de timer afgelopen is. dit is te brekenen door te kijken naar de huidige tijd en daar de gewenste tijd bij op te tellen. 
    //dit getal is in milliseconden. hierdoor moeten we de levensduur die in seconden is vermenigvuldigen met 1000
    timer = System.currentTimeMillis() + levensduur * 1000;
    println(timer);

    xRichting = 0;
    yRichting = 0;
  }
}