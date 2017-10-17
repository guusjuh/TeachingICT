class Particle{
  color Color;
  float xPositie, yPositie;
  int particleWidth, particleHeight;
  float directionX, directionY;
  
  Particle(float xPositie, float yPositie, int particleWidth, int particleHeight, float directionX, float directionY, color Color){
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
    directionY += 0.1f;
    xPositie += directionX;
    yPositie += directionY;
    fill(Color);
    ellipse(xPositie, yPositie, particleWidth, particleHeight);
  }
}