class Particle{
  color Color;
  int xPositie, yPositie;
  int particleWidth, particleHeight;
  
  Particle(int xPositie, int yPositie, int particleWidth, int particleHeight, color Color){
    this.xPositie = xPositie;
    this.yPositie = yPositie;
    this.particleWidth = particleWidth;
    this.particleHeight = particleHeight;
    this.Color = Color;
  }
  
  void setup(){
    
  }
  
  void draw(){
    fill(Color);
    ellipse(xPositie, yPositie, particleWidth, particleHeight);
  }
}