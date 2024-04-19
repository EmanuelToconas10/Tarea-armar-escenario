// Clase para el personaje controlado por el usuario
class Personaje {
  private PImage imagen;
  private PVector posicion;

  Personaje() {
    imagen = loadImage("personaje.png");
  }
  public Personaje(PVector posicion, PVector velocidad) {
    this.posicion=posicion;
    this.imagen = loadImage("personaje.png");
  }

  public void mostrar() {
    image(imagen, this.posicion.x, this.posicion.y);
  }

  public void mouseMoved() {
    this.posicion.x = mouseX;
    this.posicion.y = mouseY;
  }
}
