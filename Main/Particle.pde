class Particle{
  color Color;
  int xPositie, yPositie;
  int particleWidth, particleHeight;
  int directionX, directionY;
  
  Particle(int xPositie, int yPositie, int particleWidth, int particleHeight, int directionX, int directionY, color Color){
    this.xPositie = xPositie;
    this.yPositie = yPositie;
    this.particleWidth = particleWidth;
    this.particleHeight = particleHeight;
    this.directionX = directionX;
    this.directionY = directionY;
    this.Color = Color;
  }
  
  void setup(){
    
  }
  
  void draw(){
    xPositie += directionX;
    yPositie += directionY;
    fill(Color);
    ellipse(xPositie, yPositie, particleWidth, particleHeight);
  }
}