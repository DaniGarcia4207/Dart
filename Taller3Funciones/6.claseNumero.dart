/*Escribir un programa que implemente y utilice una función para determinar si un 
número es positivo o negativo, par o impar.*/
import 'dart:io';
void main(){
  print("Por favor ingrese un numero");
  int n = int.parse(stdin.readLineSync().toString());
  String respuesta = tipoNumero(n);
  print(respuesta);
} 
String tipoNumero(int n){
  String respuesta;
  if(n<0){
    if(n % 2 == 0){
      respuesta = ("El numero es negativo y par");
    }else{
      respuesta = ("El numero es negativo e impar");
    }
  }
  else{
    if(n % 2 == 0){
      respuesta = ("El numero es positivo y par");
    }else{
      respuesta = ("El numero es positivo e impar");
    }
  }
  return respuesta;
} 