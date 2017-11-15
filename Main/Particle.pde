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
    rectMode(CENTER);
    rect(xPositie,yPositie,20,100);
    ellipse(xPositie,yPositie-30,60,60);
    ellipse(xPositie-19,yPositie-30,16,32); 
    ellipse(xPositie+19,yPositie-30,16,32); 
    line(xPositie-10,yPositie+50,xPositie-20,yPositie+60);
    line(xPositie+10,yPositie+50,xPositie+20,yPositie+60);
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

    xRichting = random(-10,10);
    yRichting = random(-10,10);
  }
}