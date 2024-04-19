// Clase para los obstáculos móviles
class Obstaculo {
  PImage imagen;
  int x, y;
  int velocidad = 3;
  boolean moviendoDerecha = true;
  
  Obstaculo() {
    imagen = loadImage("obstaculo.png");
    x = width;
    y = height / 2;
  }
  
  void mostrar() {
    image(imagen, x, y);
  }
  
  void actualizar() {
    // Mover de izquierda a derecha y viceversa
    if (moviendoDerecha) {
      x += velocidad;
    } else {
      x -= velocidad;
    }
    
    // Rebotar contra el marco del lienzo
    if (x > width - imagen.width || x < 0) {
      moviendoDerecha = !moviendoDerecha;
    }
  }
}
