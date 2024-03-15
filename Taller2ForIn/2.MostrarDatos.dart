/*Escribir un programa que pregunte al usuario su nombre, edad, dirección y teléfono y 
lo guarde en un diccionario. Después debe mostrar por pantalla el mensaje <nombre> 
tiene <edad> años, vive en <dirección> y su número de teléfono es <teléfono>.*/ 
import 'dart:io';
void main (){
print("Ingrese su nombre, edad, direccion y telefono:");
String nombre;
String edad;
String direccion;
String telefono;
Map<String, String> datos ={
  'Nombre ': nombre = stdin.readLineSync().toString(),
  'Edad': edad = stdin.readLineSync().toString(),
  'Direccion': direccion = stdin.readLineSync().toString(),
  'Telefono' : telefono = stdin.readLineSync().toString(),
};
 
  print("${nombre} tiene ${edad}años, vive en ${direccion} y su numero de telefono es ${telefono}");
}