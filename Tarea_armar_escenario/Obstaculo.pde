boolean moviendoDerecha = true;
// Clase para los obstáculos móviles
class Obstaculo {
  private PImage imagen;
  private PVector posicion;
  private PVector velocidad;


  public Obstaculo() {
    imagen = loadImage("obstaculo.png");
  }
  public Obstaculo(PVector posicion, PVector velocidad) {
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.imagen = loadImage("obstaculo.png");
  }

  public void mostrar() {
    image(imagen, this.posicion.x, this.posicion.y);
  }

  public void mover() {
    // Mover de izquierda a derecha y viceversa
    if (moviendoDerecha) {
      this.posicion.x += this.velocidad.x;
    } else {
      this.posicion.x -= this.velocidad.x;
    }

    // Rebotar contra el marco del lienzo
    if (this.posicion.x > width - imagen.width || this.posicion.x < 0) {
      moviendoDerecha = !moviendoDerecha;
    }
  }
}
