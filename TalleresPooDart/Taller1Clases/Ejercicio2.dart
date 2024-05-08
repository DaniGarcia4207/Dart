/*Desarrolla una clase Cafetera con atributos _capacidadMaxima (la cantidad máxima 
de café que puede contener la cafetera) y _cantidadActual (la cantidad actual de café 
que hay en la cafetera). Implementar los siguientes métodos
• establece la capacidad máxima en 1000 (c.c.) y la actual en cero (cafetera 
vacía). 
• simula la acción de servir una taza con la capacidad indicada. Si la cantidad 
actual de café “no alcanza” para llenar la taza, se sirve lo que quede.
• vaciarCafetera: pone la cantidad de café actual en cero. 
• agregarCafe: añade a la cafetera la cantidad de café indicada.*/
import 'dart:io';

class Cafetera{
  int capacidadMaxima=0;
  int cantidadActual=0;

  Cafetera(this.capacidadMaxima,this.cantidadActual){
    this.capacidadMaxima = capacidadMaxima;
    this.cantidadActual = cantidadActual;
  }
   void vaciarCafetera(){
    capacidadMaxima = 1000;
    cantidadActual = 0;
    print("La cafetera esta vacia");
   }
   void agregarCafe(){
      capacidadMaxima=1000;
      print("Cuanto cafe desea añadir a la cafetera capacidad maxima${capacidadMaxima}");
      int agregarCafe = int.parse(stdin.readLineSync().toString());
      if(agregarCafe<capacidadMaxima && cantidadActual+agregarCafe<capacidadMaxima){
        cantidadActual = agregarCafe;
        print("Agregaste ${agregarCafe} mililitros de cafe");
      }else{
        print("No puedes exceder la capacidad maxima de la cafetera");
      }
   }
   void servirCafe(){
    print("Indique la capacidad de su taza");
    int capacidad = int.parse(stdin.readLineSync().toString());
    if(cantidadActual>=capacidad){
      cantidadActual=cantidadActual-capacidad;
      print("Taza completamente llena quedaron ${cantidadActual} mililitros en la cafetera");
    }else if(cantidadActual <= 0){
      print("No hay cafe en la cafetera por favor ingrese mas cafe");
    }else{
      print("solo se lleno su taza con ${cantidadActual} ,mililitros por que no hay suficiente cafe");
      cantidadActual = cantidadActual - capacidad;
    }
   }
}
void main(){
  final cafetera1 = new Cafetera(0, 0);
  print("Escoja cualquiera de las siguientes opciones");
  int respuesta = 0;
  do{
    print("-------------------");
    print("1.Llenar cafetera");
    print("2.Vaciar cafetera");
    print("3.Servir cafe");
    print("-------------------");
    respuesta = int.parse(stdin.readLineSync().toString());
    switch(respuesta){
      case 1:
      cafetera1.agregarCafe();
      break;

      case 2:
      cafetera1.vaciarCafetera();
      break;

      case 3:
      cafetera1.servirCafe();
      break;
    } 
  }while(respuesta>0 && respuesta<4);
}
