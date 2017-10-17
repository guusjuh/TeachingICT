class Particle{
  color Color;
  float xPositie, yPositie;
  int particleWidth, particleHeight;
  float directionX, directionY;
  
  Particle(int xPositie, int yPositie, int particleWidth, int particleHeight, float directionX, float directionY, color Color){
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