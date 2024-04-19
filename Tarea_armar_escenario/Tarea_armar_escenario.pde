// Clase principal del juego
class Juego {
  PImage fondo;
  Personaje personaje;
  Obstaculo obstaculo;
  
  Juego() {
    fondo = loadImage("fondo2.png");
    personaje = new Personaje();
    obstaculo = new Obstaculo();
  }
  
  void setup() {
    size(800, 600);
  background(0);
  personaje.mostrar();
  obstaculo.mostrar();
  }

  void draw() {
    // Dibujar fondo
    image(fondo, 0, 0, width, height);
    
    
  }
  
  void keyPressed() {
    // Mover personaje con teclas del mouse
    personaje.mover(keyCode);
  }
}

Juego juego;

void setup() {
  juego = new Juego();
  juego.setup();
}

void draw() {
  juego.draw();
}

void keyPressed() {
  juego.keyPressed();
}
