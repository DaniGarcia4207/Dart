/*Escribir un programa que cree un diccionario vacío y lo vaya llenado con información 
sobre una persona (por ejemplo nombre, edad, sexo, teléfono, correo electrónico, etc.) 
que se le pida al usuario. Cada vez que se añada un nuevo dato debe imprimirse el 
contenido del diccionario.*/
import 'dart:io';
void main(){
  Map <String,String> persona = {};
  List<String> informacion = ['Nombre','Edad','Sexo','Telefono','Correo Electronico'];
  for (String x in informacion){
    print("Ingrese su ${x}:");
    String dato = stdin.readLineSync().toString();
    persona.addAll({'${x}':'${dato}'});
    print(persona);
  }
}