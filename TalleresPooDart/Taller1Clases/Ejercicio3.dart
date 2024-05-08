/*Desarrolla una clase Cancion con los siguientes atributos: titulo: una variable String 
que guarda el título de la canción. autor: una variable String que guarda el autor de la 
canción. y los siguientes métodos:  
• Cancion que recibe como parámetros el título y el autor de la canción. 
• dameTitulo: devuelve el título de la canción.  
• dameAutor: devuelve el autor de la canción.  
• ponTitulo:  establece el título de la canción.  
• ponAutor: establece el autor de la canción.*/
import 'dart:io';

class Cancion{
  String titulo="";
  String autor="";

  Cancion(this.titulo, this.autor){
    this.titulo = titulo;
    this.autor = autor;
  }

  String dameTitulo() {
    return titulo;
  }

  String dameAutor() {
    return autor;
  }

  void ponTitulo(String nuevoTitulo) {
    titulo = nuevoTitulo;
  }

  void ponAutor(String nuevoAutor) {
    autor = nuevoAutor;
  }
}

void main() {
   Cancion miCancion = Cancion("Lo mejor que hay en mi vida", "Andres Cepeda");
   print("Escoja cualquiera de las siguientes opciones");
   int respuesta = 0;
  do{
    print("-------------------");
    print("1.Dame el titulo de la cancion");
    print("2.Dame el autor de la cancion");
    print("3.Poner titulo nuevo a la cancion");
    print("4.Poner autor nuevo a la cancion");
    print("-------------------");
    respuesta = int.parse(stdin.readLineSync().toString());
    switch(respuesta){
      case 1:
      print("Título: ${miCancion.dameTitulo()}");
      break;
      case 2:
      print("Autor: ${miCancion.dameAutor()}");
      break;
      case 3:
      print("Ingrese el nuevo titulo");
      String nuevoTitulo = stdin.readLineSync().toString();
      miCancion.ponTitulo(nuevoTitulo);
      print("Título actualizado: ${miCancion.dameTitulo()}");
      break;
      case 4:
      print("Ingrese el nuevo autor");
      String nuevoAutor = stdin.readLineSync().toString();
      miCancion.ponAutor(nuevoAutor);
      print("Autor actualizado: ${miCancion.dameAutor()}");
      break;
    } 
  }while(respuesta>0 && respuesta<5);
}