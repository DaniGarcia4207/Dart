/*Realizar una función, en el cual se ingresa un número entero de varias cifras y un entero 
con una posición y se retorna el dígito de dicha posición.  
Ejemplo: 
Entrada: 987  2 
Salida  :  8*/
import 'dart:io';
void main(){
  print("Ingrese un numero de varias cifras");
  String num = stdin.readLineSync().toString();
  print("Ingrese la posicion del numero que quieres ver");
  int posicion = int.parse(stdin.readLineSync().toString());
  buscarPosicion(num, posicion);
}
void buscarPosicion (String num,int posicion){
List<String> numeros = [];
  for(String N in num.split("")){
    numeros.add(N);
  }
  int x = 0;
  for(int i = 1; i<numeros.length+1;i++){
    if(i == posicion){
      print(numeros[x]);
    }
    x++;
  }
}