/*Crea una clase Libro que modele la información que se mantiene en una biblioteca 
sobre cada libro: título, autor (usa la clase Persona), ISBN, páginas, edición, editorial , 
lugar (ciudad y país) y fecha de edición (usa la clase Fecha). La clase debe 
proporcionar los siguientes servicios:  
• método para leer la información y método para mostrar la información. Este 
último método mostrará la información del libro.*/

class Persona{
  String autor="";

  Persona(this.autor){
    this.autor=autor;
  }

  String toString() {
    return '${autor}';
  }
}
class Fecha{
  String fechaEdicion ="";
  Fecha(this.fechaEdicion){
    this.fechaEdicion=fechaEdicion;
  }
  String toString() {
    return '${fechaEdicion}';
  }
}
class Libro{
  String titulo="";
  String autor="";
  String ISBN="";
  int paginas=0;
  String edicion="";
  String editorial="";
  String lugar="";
  String fechaEdicion="";

  Libro(this.titulo,this.autor,this.ISBN,this.paginas,this.edicion,this.editorial,this.lugar,this.fechaEdicion){
    this.autor=autor;
    this.titulo=titulo;
    this.ISBN=ISBN;
    this.paginas=paginas;
    this.edicion=edicion;
    this.editorial=editorial;
    this.lugar=lugar;
    this.fechaEdicion=fechaEdicion;
  }

  void mostrarInformacion() {
    print('Información del libro:');
    print('Título: $titulo');
    print('Autor: $autor');
    print('ISBN: $ISBN');
    print('Páginas: $paginas');
    print('Edición: $edicion');
    print('Editorial: $editorial');
    print('Lugar: $lugar');
    print('Fecha de edición: $fechaEdicion');
  }
}
void main(){
  final Persona autor = new Persona("Gabriel Garcia Marquez");
  final Fecha fechaEdicion = new Fecha("1967");
  final Libro libro1 = new Libro("Cien años de Soledad", "$autor", "12345678", 654, "primera edicion", "Babel libros", "Costa Caribe, Colombia", "$fechaEdicion");
  libro1.mostrarInformacion();
}