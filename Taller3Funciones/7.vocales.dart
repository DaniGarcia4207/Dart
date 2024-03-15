/*Realiza un programa que lea una cadena de caracteres por teclado y escriba por 
pantalla el número de apariciones en la cadena de cada una de las vocales haciendo 
uso una función*/
import 'dart:io';
void main(){
  print("Por favor ingrese un texto");
  String cadena = stdin.readLineSync().toString();
  conteoVocales(cadena);
} 
void conteoVocales(String palabra){
  List<String> vocales = ["a","e","i","o","u"];
  List<int> conteoVocales = [0,0,0,0,0]; 

    for(String letra in palabra.split("")){
        for(int i = 0; i < vocales.length ;i++){
            if(letra == vocales[i]){
                conteoVocales[i]++; 
            }
        }
    }

    print("Numero de veces que aparece cada vocal:"); 

    for (int i = 0; i < vocales.length; i++){
      print(vocales[i]+":"+ conteoVocales[i].toString());
    }
}