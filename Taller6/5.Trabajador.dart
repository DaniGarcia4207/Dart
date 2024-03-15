import 'dart:io';
void main(){
  print("Ingrese las horas trabajadas y el valor por hora");
  int HT = int.parse(stdin.readLineSync().toString());
  int VH = int.parse(stdin.readLineSync().toString());
  double total=0;
  int total1=0;
  double vf=0;
  if(HT>40){
    vf = VH *0.50;
    total = vf * HT;
    print("El salario es${total}");
  }else{
    total1 = VH * HT;
    print("El salario es${total1}");
  }
}