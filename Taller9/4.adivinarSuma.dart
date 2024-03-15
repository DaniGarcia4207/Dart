import 'dart:io';
import 'dart:math';
void main(){
  var a = Random().nextInt(100); // Value is >= 0 and < 10.
  var b = Random().nextInt(100);
  print("Por favor calcule e introduzca la suma de ${a} y ${b}");
  int suma = int.parse(stdin.readLineSync().toString());
  int respuesta = a + b;
  while(suma != respuesta){
    print("Respuesta incorrecta introduzcala nuevamente");
    suma = int.parse(stdin.readLineSync().toString());
  } 
  print("Felicitaciones su respuesta es correcta"); 
}