import 'dart:io';
void main(){
  double total;
  print("Por favor digite el valor de compra");
  int ValorCompra = int.parse(stdin.readLineSync().toString());
  if(ValorCompra>=100000){
    if(ValorCompra>=200000){
      double D20 = ValorCompra*0.20;
      total = ValorCompra-D20;
      print("Su descuento es de 20% y el valor a pagar es: $total");
    }else{
      double D10 = ValorCompra*0.10;
      total = ValorCompra-D10;
      print("Su descuento es de 10% y el valor a pagar es: $total");
    }
  }else{
    print("Usted no obtuvo descuento y el valor a pagar es: $ValorCompra");
  }
}