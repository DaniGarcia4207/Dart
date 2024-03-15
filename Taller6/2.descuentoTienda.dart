import 'dart:io';
void main(){
  print("Por favor digitar mes de compra e importe");
  String mes = stdin.readLineSync().toString();
  int importe = int.parse(stdin.readLineSync().toString());
  double descuento =0;
  double total =0;
  if(mes == "enero" || mes =="febrero" || mes == "marzo"){
    descuento = importe * 15/100;
    total = importe-descuento;
    print("la cantidad a cobrar es ${total}");
  }else if(mes == "abril" || mes == "mayo" || mes == "junio"){
    descuento = importe * 0.20;
    total = importe-descuento;
    print("la cantidad a cobrar es ${total}");
  }else{
     print("la cantidad a cobrar es ${importe}");
  }
}