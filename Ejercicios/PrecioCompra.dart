import 'dart:io';
void main(){
print("porfavor digite el valor de su compra");
int Pcompra = int.parse(stdin.readLineSync().toString());
print("Digite el descuento aplicado");
double descuento = double.parse(stdin.readLineSync().toString());
double Pfinal = Pcompra-(Pcompra*descuento/100);
print("El valor a pagar es de $Pfinal pesos");
}