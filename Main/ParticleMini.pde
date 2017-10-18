class ParticleMini{
  color Color;
  float xPositie, yPositie;
  float xPositieStart, yPositieStart;
  int particleWidth, particleHeight;
  float xRichting, yRichting;
  float levensDuur;
  double vorrigeTijd;
  double huidigeTijd;
  double verlopenTijd;
  
  ParticleMini(int particleWidth, int particleHeight, color Color){
    this.particleWidth = particleWidth;
    this.particleHeight = particleHeight;
    this.Color = Color;
    huidigeTijd = System.currentTimeMillis();
  }
  
  void setup(float xPositie, float yPositie){
    verlopenTijd = 0;
    this.xPositie = xPositie;
    this.yPositie = yPositie;
      
    float xRichting = random(-3, 3);
    float yRichting = random(-4, -3);
    float levensDuur = random(1, 2);
    
    this.levensDuur = levensDuur;
    this.xRichting = xRichting;
    this.yRichting = yRichting;
  }
  
  void draw(){
    yRichting += 0.1f;
    if(xPositie + xRichting > width - (particleWidth / 2) || xPositie + xRichting < 0 + (particleWidth / 2)){
      xRichting = -xRichting;
    }
    if(yPositie + yRichting > height - (particleHeight / 2) || yPositie + yRichting < 0 + (particleHeight / 2)){
      yRichting = -yRichting;
    }
    vorrigeTijd = huidigeTijd;
    huidigeTijd = System.currentTimeMillis();
    double deltaTijd = (huidigeTijd - vorrigeTijd) * 0.001d;
    verlopenTijd += deltaTijd;
    if(levensDuur < verlopenTijd)
    {
      xPositie = -100;
      yPositie = -100;
      xRichting = 0;
      yRichting = 0;
    }
    
    xPositie += xRichting;
    yPositie += yRichting;
    fill(Color);
    ellipse(xPositie, yPositie, particleWidth, particleHeight);
  }
}