import 'dart:io';
void main(){
  print("Hasta que numero desea generar la serie fibonacci");
  int num = int.parse(stdin.readLineSync().toString());
  int x=1;
  int a = 0;
  int b = 1;
  while(a<=num || b<=num){
    if(x % 2 == 1){
      print(a);
      a = a+b;
    }else{
      print(b);
      b = b+a;
    }
    x++;
  }
}