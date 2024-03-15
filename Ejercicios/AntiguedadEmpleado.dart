import 'dart:io';
void main(){
  print("Por favor digitar el el siguiente orden :\nNombre\nAnios trabajados\nHoras rabajadas al mes\nValor por hora"); 
  String nombre = stdin.readLineSync().toString();
  int Atrabajados = int.parse(stdin.readLineSync().toString());
  int Htrabajadas = int.parse(stdin.readLineSync().toString());
  int Vhora = int.parse(stdin.readLineSync().toString());

  int TotalBruto = (Vhora*Htrabajadas)+(Atrabajados*30000);
  double descuento = TotalBruto*0.13;
  double TotalNeto = TotalBruto-descuento;

  print("Empleado: $nombre \nAnios Trabajados: $Atrabajados \nValor por hora: $Vhora");
  print("El total bruto es: $TotalBruto, el total de descuento $descuento y el  total neto $TotalNeto");
}