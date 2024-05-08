/*Construir una clase Factura que descienda de la clase Precio y que incluya dos atributos 
específicos llamados emisor y cliente y, al menos, un método llamado imprimirFactura.*/
class Precio {
  int precioTotal=0;

  Precio(this.precioTotal){
    this.precioTotal=precioTotal;
  }
}
class Factura extends Precio{
  Factura(int precioTotal):super(precioTotal);
  String emisor="Daniela Garcia";
  String cliente="Diana Marcela";
  void imprimirFactura(){
    print("---FACTURA DE VENTA---");
    print("Vendedor: ${emisor}");
    print("Cliente: ${cliente}");
    print("Total: ${this.precioTotal}");
    print("-----------------------");
  }
}
void main(){
  final Precio total= new Precio(600000);
  final Factura Factura1 = new Factura(total.precioTotal);
  Factura1.imprimirFactura();
}