class Particle{
  color Color;
  float xPositie, yPositie;
  float xPositieStart, yPositieStart;
  int particleWidth, particleHeight;
  float directionX, directionY;
  float levensDuur;
  double vorrigeTijd;
  double huidigeTijd;
  double verlopenTijd;
  
  Particle(float xPositie, float yPositie, int particleWidth, int particleHeight, color Color){
    this.xPositie = xPositie;
    this.yPositie = yPositie;
    this.xPositieStart = xPositie;
    this.yPositieStart = yPositie;
    this.particleWidth = particleWidth;
    this.particleHeight = particleHeight;
    this.Color = Color;
    huidigeTijd = System.currentTimeMillis();
  }
  
  void setup(){
    verlopenTijd = 0;
    xPositie = xPositieStart;
    yPositie = yPositieStart;
      
    float xRichting = random(-3, 3);
    float yRichting = random(-4, -3);
    float levensDuur = random(1, 3);
    
    this.levensDuur = levensDuur;
    this.directionX = xRichting;
    this.directionY = yRichting;
  }
  
  void draw(){
    directionY += 0.1f;
    if(xPositie + directionX > width - (particleWidth / 2) || xPositie + directionX < 0 + (particleWidth / 2)){
      directionX = -directionX;
    }
    if(yPositie + directionY > height - (particleHeight / 2) || yPositie + directionY < 0 + (particleHeight / 2)){
      directionY = -directionY;
    }
    vorrigeTijd = huidigeTijd;
    huidigeTijd = System.currentTimeMillis();
    double deltaTijd = (huidigeTijd - vorrigeTijd) * 0.001d;
    verlopenTijd += deltaTijd;
    if(levensDuur < verlopenTijd)
    {
      setup();
    }
    
    xPositie += directionX;
    yPositie += directionY;
    fill(Color);
    ellipse(xPositie, yPositie, particleWidth, particleHeight);
  }
}