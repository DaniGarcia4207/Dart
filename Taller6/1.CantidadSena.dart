import 'dart:io';
void main(){
  print("Digitar cantidad de hombres y mujeres del SENA");
  int hombres = int.parse(stdin.readLineSync().toString());
  int mujeres = int.parse(stdin.readLineSync().toString());
  double porcentajeH;
  double porcentajeM;
  int total = hombres+mujeres;
  porcentajeH = total * hombres/100;
  porcentajeM = total * mujeres/100;

  if(porcentajeH>porcentajeM){
    print("Hay mayor cantidad de hombres y su porcentaje es ${porcentajeH}");
  }else{
    print("Hay mayor cantidad de mujeres y su porcentaje es ${porcentajeM}");
  }

}