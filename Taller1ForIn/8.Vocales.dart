import 'dart:io';

void main(){

    print("Ingrese una palabra: ");
    String palabra = stdin.readLineSync().toString(); 
    
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