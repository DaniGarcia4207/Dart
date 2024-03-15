import 'dart:io';
void main(){
  print("Digite la contraseña");
  int clave = int.parse(stdin.readLineSync().toString());
  while(clave != 1234){
    print("Contraseña incorrecta ingresela nuevamente");
    clave = int.parse(stdin.readLineSync().toString());
  }
  print("Contraseña correcta");
}