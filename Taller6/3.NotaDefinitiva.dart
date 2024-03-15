import 'dart:io';
void main(){
 print("Por favor ingrese la nota del taller1");
 double t1 = double.parse(stdin.readLineSync().toString());
 print("Por favor ingrese la nota del taller2");
 double t2 = double.parse(stdin.readLineSync().toString());
 print("Por favor ingrese la nota del examen");
 double e = double.parse(stdin.readLineSync().toString());
 double p1 = t1 * 0.30;
 double p2 = t2 * 0.30;
 double p3 = e * 0.40;
 double definitiva = p1+p2+p3/3;
 print("La nota definitiva es ${definitiva}");
}