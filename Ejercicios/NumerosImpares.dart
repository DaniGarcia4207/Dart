import 'dart:io';
void main(){
  print("Digite el numero de inicio y el numero final de la lista de impares");
  int x = int.parse(stdin.readLineSync().toString());
  int y = int.parse(stdin.readLineSync().toString());
  int impar = 0;
  int i = 0;
  while(impar<y-1){
    if(x % 2 == 0){
      i = x+1;
      print(i);
      impar = i+2;
      print(impar);
    }else{
      impar = x+2;
      print(impar);
    }
    x = impar;
  }
}