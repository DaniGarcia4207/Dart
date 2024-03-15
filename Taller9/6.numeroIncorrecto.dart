import 'dart:io';
void main(){
  print("Porfavor digite dos numeros enteros");
  int a = int.parse(stdin.readLineSync().toString());
  int b = int.parse(stdin.readLineSync().toString());
  print("Porfavor digite numeros enteros entre los dos numeros");
  int c = 0;
  int cont=0;
  if(a>b){
    while(c<a && c>b){
      print(a);
      c = int.parse(stdin.readLineSync().toString());
      cont++;
    }
    print("Usted digito ${cont} numeros");
  }else{
    while(c>a && c<b){
    c = int.parse(stdin.readLineSync().toString());
    cont++;
    }
    print("Usted digito ${cont} numeros");
  }
  //print("los dos numeros que ingreso son iguales");
}