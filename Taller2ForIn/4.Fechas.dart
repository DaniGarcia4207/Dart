/*Escribir un programa que pregunte una fecha en formato dd/mm/aaaa y muestre por 
pantalla la misma fecha en formato dd de <mes> de aaaa donde <mes> es el nombre 
del mes.*/ 
import 'dart:io';
void main(){
  Map<int, String> meses ={
    1:'Enero',
    2:'Febrero',
    3:'Marzo',
    4:'Abril',
    5:'Mayo',
    6:'Junio',
    7:'Julio',
    8:'Agosto',
    9:'Septiembre',
    10:'Octubre',
    11:'Noviembre',
    12:'Diciembre',
  };
  print("Ingrese la fecha en formato dd/mm/aaa");
  String fecha = stdin.readLineSync().toString();

  List<String> partesFecha = fecha.split("/");
  int day = int.parse(partesFecha[0]);
  int month = int.parse(partesFecha[1]);
  int year = int.parse(partesFecha[2]);

  meses.forEach((key, value) { 
    if(key==month){
      print('${day} de ${value} de ${year}');
    }
  });
}
