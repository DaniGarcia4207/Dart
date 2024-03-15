import 'dart:io';
void main(){
  print("Por favor digitar un numero positivo");
  int n = int.parse(stdin.readLineSync().toString());
  int x = 0;
  int suma = 0;
  while(x<n){
    x++;
    print(x);
    suma = suma + x;
  }
  print(suma);
}