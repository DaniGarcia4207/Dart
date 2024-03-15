import 'dart:io';
void main(){
  Map <int,int> carrito = {};
  String eleccion;
  int total=0;
  int cont = 0;
  do{
    print("Ingrese 'A' para agregar una compra y 'F' para finalizar las compras ");
    eleccion = stdin.readLineSync().toString();
    if(eleccion == "A"){
      print("Digite el articulo y su precio");
      String articulo = stdin.readLineSync().toString();
      int precio = int.parse(stdin.readLineSync().toString());
      total = total+precio;
      cont=cont+1;
      carrito.addAll({cont : precio});
    }else{
      break;
    }
  }while(eleccion == "A");
  carrito.forEach((key, value) {
    print("Articulo ${key} : Precio: ${value}");
  });
  print("El total de la compra es :${total}");
}