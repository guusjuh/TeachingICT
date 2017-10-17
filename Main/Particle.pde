class Particle {
  color kleur;
  float xPositie, yPositie;
  int breedte, hoogte;
  float xRichting, yRichting;
  
  Particle() {
    kleur = color(255, 0, 0);
    xPositie = 0;
    yPositie = 0;
    breedte = 40;
    hoogte = 40;
    xRichting = 0;
    yRichting = 0;
  }

  void draw() {
    xPositie += xRichting;
    yPositie += yRichting;
    fill(kleur);
    ellipse(xPositie, yPositie, breedte, hoogte);
  }
}