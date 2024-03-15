import 'dart:io';
void main(){
  double capital;
  int sum=0;
  double interes =0;
  print("Digite capital invertido");
  capital = double.parse(stdin.readLineSync().toString());
  double i = capital*2;
  while(capital<=i){
    sum = sum + 1;
    interes = capital*0.5;
    capital = capital + interes;
  }
  print("La cantidad de meses que se tardara en duplicar la ganancia es ${sum}");
}