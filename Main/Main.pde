Particle[] particles;

void setup() {
  size(640, 480);
    
  particles = new Particle[10];
  
  for(int i = 0; i < particles.length; i++) {  
    particles[i] = new Particle();
    
    particles[i].xPositie = width / 2;
    particles[i].yPositie = height / 2;
    
    float xRichting = random(-10, 10);
    float yRichting = random(-10, 10); 
    
    particles[i].xRichting = xRichting;
    particles[i].yRichting = yRichting;
  }
}

void draw() {
  background(0);
  
  for(int i = 0; i < particles.length; i++) {
    particles[i].draw();
  }
}