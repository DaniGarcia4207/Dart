/*Escribir un programa en C que simule una pequeña calculadora que implementa las 
siguientes operaciones: 
• Multiplicación 
• Suma 
• Resta 
• División 
• Potencia 
• Raíz 
Todas las operaciones deben ser implementadas como funciones. La selección de la 
operación se realizará mediante un pequeño menú desplegado por pantalla.*/
import 'dart:io';
import 'dart:math';
void main(){
  int elec=0;
  while(elec != 7){
    print("---------------------------");
    print("------------MENU-----------");
    print("---------------------------");
    print("1.SUMA                     ");
    print("2.MULTIPLICACION           ");
    print("3.RESTA                    ");
    print("4.DIVISION                 ");
    print("5.POTENCIA                 ");
    print("6.RAIZ                     ");
    print("7.SALIR                    ");
    print("---------------------------");
    elec = int.parse(stdin.readLineSync().toString());
    switch(elec){
      case 1:
      print("Por favor ingrese dos numeros");
      int a = int.parse(stdin.readLineSync().toString());
      int b = int.parse(stdin.readLineSync().toString());
      String mensaje = Suma(a,b);
      print(mensaje);
      break;

      case 2:
      print("Por favor ingrese dos numeros");
      int a = int.parse(stdin.readLineSync().toString());
      int b = int.parse(stdin.readLineSync().toString());
      String mensaje = Multiplicacion(a,b);
      print(mensaje);
      break;

      case 3:
      print("Por favor ingrese dos numeros");
      int a = int.parse(stdin.readLineSync().toString());
      int b = int.parse(stdin.readLineSync().toString());
      String mensaje = Resta(a,b);
      print(mensaje);
      break;

      case 4:
      print("Por favor ingrese dos numeros");
      int a = int.parse(stdin.readLineSync().toString());
      int b = int.parse(stdin.readLineSync().toString());
      String mensaje = Division(a,b);
      print(mensaje);
      break;

      case 5:
      print("Por favor ingrese la base y el exponente");
      int a = int.parse(stdin.readLineSync().toString());
      int b = int.parse(stdin.readLineSync().toString());
      String mensaje = Potencia(a,b);
      print(mensaje);
      break;

      case 6:
      print("Por favor ingrese un numero");
      int a = int.parse(stdin.readLineSync().toString());
      String mensaje = Raiz(a);
      print(mensaje);
      break;

      default:
      print("La opcion no esta een el menu");
    }
  }
}
String Suma(a,b){
  int suma = 0;
  suma = a + b;
  String r = ("${a}+${b}=${suma}");
  return r;
}
String Multiplicacion(a,b){
  int multi = 0;
  multi = a * b;
  String r = ("${a}x${b}=${multi}");
  return r;
}
String Resta(a,b){
  int resta = 0;
  resta = a - b;
 String r = ("${a}-${b}=${resta}");
  return r;
}
String Division(a,b){
  double divi = 0;
  divi = a / b;
  String r = ("${a}/${b}=${divi}");
  return r;
}
String Potencia(a,b){
  var potencia;
  potencia = pow(a, b);
  String r = ("${a}elevado a la${b}=${potencia}");
  return r;
}
String Raiz(a){
  double raiz;
  raiz = sqrt(a);
 String r = ("La raiz de ${a}=${raiz}");
return r;
}