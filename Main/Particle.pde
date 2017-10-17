class Particle{
  color Color;
  color ColorStart;
  int xPositie, yPositie;
  int xPositieStart, yPositieStart;
  int particleWidth, particleHeight;
  int directionX, directionY;
  float levensDuur;
  double vorrigeTijd;
  double huidigeTijd;
  double verlopenTijd;
  
  Particle(int xPositie, int yPositie, int particleWidth, int particleHeight, int directionX, int directionY, color Color, float levensDuur){
    this.xPositie = xPositie;
    this.yPositie = yPositie;
    this.xPositieStart = xPositie;
    this.yPositieStart = yPositie;
    this.particleWidth = particleWidth;
    this.particleHeight = particleHeight;
    this.directionX = directionX;
    this.directionY = directionY;
    this.Color = Color;
    this.ColorStart = Color;
    this.levensDuur = levensDuur;
    huidigeTijd = System.currentTimeMillis();
    verlopenTijd = 0;
  }
  
  void setup(){
    
  }
  
  void draw(){
    vorrigeTijd = huidigeTijd;
    huidigeTijd = System.currentTimeMillis();
    double deltaTijd = (huidigeTijd - vorrigeTijd) * 0.001d;
    verlopenTijd += deltaTijd;
    
    println(deltaTijd);
    Color += color(0, 0, (float)(deltaTijd * 150));
    
    if(levensDuur < verlopenTijd)
    {
      verlopenTijd = 0;
      xPositie = xPositieStart;
      yPositie = yPositieStart;
      Color = ColorStart;
    }
    
    xPositie += directionX;
    yPositie += directionY;
    fill(Color);
    ellipse(xPositie, yPositie, particleWidth, particleHeight);
  }
}