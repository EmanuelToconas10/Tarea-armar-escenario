// Clase para el personaje controlado por el usuario
class Personaje {
  PImage imagen;
  int x, y;
  int velocidad = 5;
  
  Personaje() {
    imagen = loadImage("personaje.jpg");
    x = width / 2;
    y = height - 100;
  }
    public void dibujar(){
    imageMode(CENTER);
      }
  void mostrar() {
    image(imagen, x, y);
  }
  
  void mover(int direccion) {
    if (direccion == LEFT) {
      x -= velocidad;
    } else if (direccion == RIGHT) {
      x += velocidad;
    }
  }
}
