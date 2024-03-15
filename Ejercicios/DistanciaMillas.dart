import 'dart:io';
void main(){
  print("Por favor digite una distancia en millas");
  int distanciaMillas = int.parse(stdin.readLineSync().toString());
  int distanciaMetros = distanciaMillas * 1852;
  print("$distanciaMillas millas equivale a $distanciaMetros metros");
}