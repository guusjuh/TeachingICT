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
    if(xPositie + directionX > width - (particleWidth / 2) || xPositie + directionX < 0 + (particleWidth / 2)){
      directionX = -directionX;
    }
    if(yPositie + directionY > height - (particleHeight / 2) || yPositie + directionY < 0 + (particleHeight / 2)){
      directionY = -directionY;
    }
    xPositie += directionX;
    yPositie += directionY;
    fill(Color);
    ellipse(xPositie, yPositie, particleWidth, particleHeight);
  }
}