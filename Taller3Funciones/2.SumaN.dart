import 'dart:io';

void main(){
  print("Digite hasta que numero quiere la suma de impares");
  int num = int.parse(stdin.readLineSync().toString());
  sumaImpares(num);
}
void sumaImpares(int N) {
  var x = 1;
  var suma = 0;
    while(x <= N){
      if(x % 2 == 1){
        suma = suma + x;
        print(x);
        x++;
      }else{
        x++;
      }
    }
    print(suma);
}