/*Escribir un programa que cree un diccionario de traducción español
inglés. El usuario introducirá las palabras en español e inglés separadas por dos 
puntos, y cada par <palabra>:<traducción> separados por comas. El programa debe 
crear un diccionario con las palabras y sus traducciones. Después pedirá una frase en 
español y utilizará el diccionario para traducirla palabra a palabra. Si una palabra no 
está en el diccionario debe dejarla sin traducir.*/
import 'dart:io';

void main() {
    Map<String, String> diccionario = {};
    print("Cuantas palabras desea ingresar al diccionario");
    int i = int.parse(stdin.readLineSync().toString());
    int cont =0;
    while(cont < i){
      print('Introduce las palabras en español e inglés separadas por dos puntos (:) y cada par separado por comas: ');
      String entrada = stdin.readLineSync().toString();
      cont ++;
      List<String> pares = entrada.split(',');
      for (String par in pares) {
        List<String> partes = par.split(':');
        String palabra = partes[0];
        String traduccion = partes[1];
        diccionario[palabra] = traduccion;
      }
    }
    print("ingrese la frase a traducir");
    String frase = stdin.readLineSync().toString();
    List<String> palabras = frase.split(' ');
    diccionario.forEach((key, value){
      for(String palabra in palabras) {
        if(palabra == key){
        print("La traduccion de ${key} es ${value}");
        }
      }
    });
}