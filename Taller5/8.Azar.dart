import 'dart:io';
import 'dart:math';
void main(){
 var a = Random().nextInt(50); // Value is >= 0 and < 10.
 var b = Random().nextInt(50);                            // intValue = Random().nextInt(100) + 50; // Value is >= 50 and < 150.
 int suma = a + b ;
 print("por favor calcule la suma de $a + $b");
 int resp = int.parse(stdin.readLineSync().toString());
  while(resp!=suma){
     print("respuesta incorrecta digitela nuevamente");
     resp = int.parse(stdin.readLineSync().toString());
  }
   print("respuesta correcta");
}