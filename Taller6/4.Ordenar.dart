import 'dart:io';
void main(){
  print("Por favor ingrese 3 numeros");
   int a = int.parse(stdin.readLineSync().toString());
   int b = int.parse(stdin.readLineSync().toString());
   int c = int.parse(stdin.readLineSync().toString());
   List<int>num = [a,b,c];
   num.sort();
   print(num);
   
}