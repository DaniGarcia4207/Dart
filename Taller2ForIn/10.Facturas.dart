/*Escribir un programa que gestione las facturas pendientes de cobro de una empresa. 
Las facturas se almacenarán en un diccionario donde la clave de cada factura será el 
número de factura y el valor el coste de la factura. El programa debe preguntar al 
usuario si quiere añadir una nueva factura, pagar una existente o terminar. Si desea 
añadir una nueva factura se preguntará por el número de factura y su coste y se añadirá 
al diccionario. Si se desea pagar una factura se preguntará por el número de factura y 
se eliminará del diccionario. Después de cada operación el programa debe mostrar por 
pantalla la cantidad cobrada hasta el momento y la cantidad pendiente de cobro.*/
import 'dart:io';
void main(){
  Map<int,int> facturas = {
    1 : 50000,
    2 : 200000,
    3 : 75000
  };
  String elec = "";
  int cantCobrada=0;
  int cantPendiente=0;
  while(elec != "T"){
    print("Digite 'A' para añadir nueva factura, 'P' para pagar una existente o 'T' para terminar");
    elec = stdin.readLineSync().toString();
    if(elec == "A"){
      print("Digite el numero de la factura y su costo");
      int num = int.parse(stdin.readLineSync().toString());
      int costo = int.parse(stdin.readLineSync().toString());
      facturas.addAll({num : costo});
      facturas.forEach((key,value){
        cantPendiente = cantPendiente+value;
      });
      print("Cantidad pendiente : ${cantPendiente}");
      print("Cantidad cobrada : ${cantCobrada}");
      cantPendiente=0;
    }else{
      if(elec == "P"){
        print("Digite el numero de la factura");
        int num = int.parse(stdin.readLineSync().toString());
        facturas.forEach((key,value){
          if(num == key){
            cantCobrada = cantCobrada+value;
            facturas.remove(key);
            //facturas.clear();
          }
          print(facturas);
          cantPendiente = cantPendiente+value;
        });
        print("Cantidad pendiente : ${cantPendiente}");
        print("Cantidad cobrada : ${cantCobrada}");
      }else{
        if(elec == "T"){
          break;
        }else{
          print("Esta opcion no esta en el menu");
        }
      }
    }
  }
}