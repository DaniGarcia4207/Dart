import 'dart:io';
void main(){
  List <int> loteria = [];
  int numero =0;
  print("Diga cuales son los numeros ganadores de la loteria");
    for(int i=0;i<5;i++){
    numero = int.parse(stdin.readLineSync().toString());
    loteria.add(numero);
    }
  loteria.sort();
  loteria.forEach((x){
  print(x);
  });
}
