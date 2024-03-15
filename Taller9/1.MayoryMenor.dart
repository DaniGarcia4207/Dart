import 'dart:io';
void main(){
  print("Por favor digite dos numeros positivos");
  int a = int.parse(stdin.readLineSync().toString());
  int b = int.parse(stdin.readLineSync().toString());
  if(a>b){
    if(a % 2 == 0){
       a = a +2;
       print(a);
    }else{
      
    }
  }
}