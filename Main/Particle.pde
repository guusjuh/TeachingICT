class Particle{
  float xPositie;
  float yPositie;
  float breedte;
  float hoogte;
  float xRichting;
  float yRichting;
  double levensduur;
  double timer;
  color kleur;
  
  void teken(){
    double huidigeTijd = System.currentTimeMillis();
    if(timer < huidigeTijd)
    {
      //recycle();
    }

    berekenVerplaatsing();    
    
    fill(kleur);
    stroke(kleur);
    ellipse(xPositie, yPositie, breedte, hoogte);
  }
  
  void berekenVerplaatsing(){
    //yRichting += 0.1f;//zwaartekracht trekt het object omlaag
    xPositie += xRichting;
    yPositie += yRichting;
  }
  
  void recycle(){
    xPositie = mouseX;
    yPositie = mouseY;
    
    //stel de tijdswaarde in voor wanneer de timer afgelopen is. dit is te brekenen door te kijken naar de huidige tijd en daar de gewenste tijd bij op te tellen. 
    //dit getal is in milliseconden. hierdoor moeten we de levensduur die in seconden is vermenigvuldigen met 1000
    timer = System.currentTimeMillis() + levensduur * 1000;
    println(timer);

    xRichting = random(-2,2);
    yRichting = random(-5, -1);
    if(abs(xRichting) >= 1){
      kleur = color(255, 0, 0);
    }
    else{
      kleur = color(255, 165, 0);
    }
  }
}