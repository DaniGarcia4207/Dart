//import 'dart:io';
import 'dart:ffi';
import 'dart:io';

void main(){
  //for clasico
  for(int i=0;i<10;i++){
    //print("numero ${i+1}");
  }

  //for in
  var Lista =['uno','dos','tres'];
  //print(Lista);
  for(String x in Lista){
    //print(x);
  }

  List<int> numeros =[1,2,3,];
  for(int x in numeros){
    //print(x);
  }


  //for each
  List <int> num =[1,2,3,4,5,6,];
  num.forEach((x) {
    //print("Accediendpo al elemento $x");
  });

  //Herramientas tipo arrow o tipo flecha
  List<int> nume =[1,2,3,4,5,6];
  //nume.forEach((element) => print('Accediendo al elemento $element'));


  //Foreach en mapas
  Map<String, double>mapa ={
    'base': 1.84,
    'altura': 1.95,
    'area': 2.10,
    'volumen': 1.90,
  };
  //accede a los valores del mapa
  /*mapa.values.forEach((valor) =>print("valor del mapa $valor"));

  mapa.keys.forEach((llave) =>print("la clave es $llave"));

  //accede a las llaves del mapa
  mapa.forEach((key, value) =>print("valor de llave del mapa $key tiene el valor $value"));*/

  
  //for each en conjuntos
  Set conjunto;
  conjunto = Set.from(['angel','luis','ana','maria']);
  //conjunto.forEach((x) => print('el elemento del conjunto: $x'));

  //Switch case
  print('Ingrese su sabor preferido');
  String sabor = stdin.readLineSync().toString();
  switch(sabor){
    case "vainilla":
    print("Su helado sera de vainilla");
    break;

    case "chocolate":
    print("Su helado sera de vainilla");
    break;

    case "naranja":
    print("Su helado sera de vainilla");
    break;

    default:
    print("no tenemos su sabor favorito");
  }
}