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
   }
   void agregarCafe(){
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
    if(cantidadActual>capacidad){
      cantidadActual=cantidadActual-capacidad;
      print("Taza completamente llena");
    }else if(cantidadActual == 0){
      print("No hay cafe en la cafetera por favor ingrese mas cafe");
      agregarCafe();

    }else{
      int cantidadRestante = capacidad-cantidadActual;
      cantidadActual = cantidadActual -cantidadRestante;
      print("solo hay ${cantidadActual} ,mililitros en la cafetera");
    }
   }
}
