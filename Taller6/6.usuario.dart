import 'dart:io';
void main(){
  print("Por favor ingrese su usuario y contraseña");
  for (int i = 0; i <3; i++){
    print("Datos incorrectos ingreselos nuevamente");
    String usuario = stdin.readLineSync().toString();
    String contrasena =stdin.readLineSync().toString();
    if(usuario == 'dani' && contrasena == '123'){
      print("Bienvenido");
      break;
    }
  }
  print("datos incorrectos ya no tiene mas intentos");
}