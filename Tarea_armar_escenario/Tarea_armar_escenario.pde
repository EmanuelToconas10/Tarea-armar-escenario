PImage fondo;
Personaje personaje;
Obstaculo obstaculo;


public void setup() {
  size(1300, 940);
  fondo = loadImage("fondo.jpg");
  obstaculo = new Obstaculo(new PVector(1000,742), new PVector(5, 0));
  personaje = new Personaje(new PVector(800, 800), new PVector(8, 0));
}

void draw() {
  // Dibujar fondo
  tint(#20CEE3);//Agregar un color
  image(fondo, 0, 0);
  fill(#D6621A);
  stroke(#0A0A0A);
  for (int x = 0; x<=width; x+=10) {
    for (int y =850; y<=height; y+=5) {
      rect(x, y, 10, 5);
    }
  }
  noTint();
  obstaculo.mostrar();
  obstaculo.mover();
  personaje.mostrar();
  personaje.mouseMoved();
}
