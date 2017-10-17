class Particle{
  color Color;
  int x, y;
  int size;
  
  Particle(int x, int y, int size, color Color){
    this.x = x;
    this.y = y;
    this.size = size;
    this.Color = Color;
  }
  
  void setup(){
    
  }
  
  void draw(){
    fill(Color);
    ellipse(x, y, size, size);
    
  }
}