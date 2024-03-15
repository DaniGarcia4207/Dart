import 'dart:io';
void main(){
  print("por favor digite dos numeros");
  int a = int.parse(stdin.readLineSync().toString());
  int b = int.parse(stdin.readLineSync().toString());
  int suma =0;
  while(a!=0 && b!=0){
    suma = a + b;
    print("La suma de ${a} + ${b} es igual a ${suma}");
    print("Por favor digite 2 numeros");
    a = int.parse(stdin.readLineSync().toString());
    b = int.parse(stdin.readLineSync().toString());
  }
}