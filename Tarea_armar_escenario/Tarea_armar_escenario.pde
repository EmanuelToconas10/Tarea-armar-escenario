// Clase principal del juego
class Juego {
  PImage fondo;
  Personaje personaje;
  Obstaculo obstaculo;
  
  Juego() {
    fondo = loadImage("fondo.jpg");
    personaje = new Personaje();
    obstaculo = new Obstaculo();
  }
  
  void setup() {
    size(800, 600);
  }
  
  void draw() {
    // Dibujar fondo
    image(fondo, 0, 0, width, height);
    
    // Actualizar y mostrar personaje
    personaje.actualizar();
    personaje.mostrar();
    
    // Actualizar y mostrar obstaculo
    obstaculo.actualizar();
    obstaculo.mostrar();
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
