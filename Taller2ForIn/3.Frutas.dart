/*Escribir un programa que guarde en un diccionario los precios de las frutas 
de la tabla, pregunte al usuario por una fruta, un número de kilos y muestre 
por pantalla el precio de ese número de kilos de fruta. Si la fruta no está en 
el diccionario debe mostrar un mensaje informando de ello.*/
import 'dart:io';
void main(){
  Map<String, double> frutas = {
    'Platano': 1.35,
    'Manzana': 0.80,
    'Pera': 0.85,
    'Naranja': 0.70
  };
  print("Ingrese la fruta que desea y cuantos kilos");
  String fruta = stdin.readLineSync().toString();
  var kilos = int.parse(stdin.readLineSync().toString());
  double Precio=0;
  var cont=0;
  var valor;
  frutas.forEach((key, value) { 
    if(fruta == key){
      valor = value;
      Precio = (valor*kilos);
      print("El precio de ${kilos} kilos de ${key} es de ${Precio}");
    }else{
      cont++;
    }
  });
  if(cont == 4){
    print("La fruta no esta en el diccionario");
  }
}