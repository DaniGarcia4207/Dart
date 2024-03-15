import 'dart:io';
void main(){
  Map<String, String>mapa ={
  'Euro':'€',
  'Dollar':'&',
  'Yen':'¥'
  };
  print("Introduce una Divisa");
  String divisa = stdin.readLineSync().toString();
  int i=1;
  mapa.forEach((key,value){
    if(key == divisa){
      print("El simbolo es ${value}");
      i++;
    }else if(i==1){
      print("La divisa no esta en el diccionario");
      i++;
    }
  }); 
}