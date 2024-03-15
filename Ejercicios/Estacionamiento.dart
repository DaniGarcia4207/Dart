import 'dart:io';
void main(){
  print("Porfavor digite las horas de estadia");
  int HE = int.parse(stdin.readLineSync().toString());
  int valorPagar =(HE*600)+400;
  print("el valor a pagar es ${valorPagar}");
}