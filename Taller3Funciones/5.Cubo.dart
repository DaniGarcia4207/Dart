/*Escribir un programa que implemente y utilice una function que calcule el cubo de los 
numeros entre dos variables n y m.*/
import 'dart:io';

void main (){
  print("Por favor ingrese dos numeros");
  int a = int.parse(stdin.readLineSync().toString());
  int b = int.parse(stdin.readLineSync().toString());
  cubo (a,b);
}
void cubo(int a, int b){
  int cubo = 0;
  int cont = a+1;
  while(cont<b){
    a = a + 1;
    cubo = a * a * a;
    print("el cubo de ${a} es ${cubo} ");
    cont ++;
  }
}