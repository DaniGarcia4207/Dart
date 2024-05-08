/*La empresa informática “INPUT TECHNOLOGIES” necesita llevar un registro de todos sus 
empleados que se encuentran en la oficina central, para eso ha creado un diagrama de 
clases que debe incluir Empleado, y Programador.*/
class Empleado {    
  String nombre = "";
  int edad=0;
  String cargo="";

  Empleado(this.nombre,int edad, String cargo);

  @override
  String toString() {
    return 'Informacion del empleado: \nNombre: $nombre, Edad: $edad, Cargo: $cargo';
  }
} 
class Programador extends Empleado{
  String nivel ="";
  String direccion ="";
  String telefono ="";
  String lenguajeDominante ="";

  Programador(String nombre, int edad, this.nivel,this.direccion,this.telefono,this.lenguajeDominante): super(nombre, edad);

  @override
  String toString() {
  return 'Informacion personal del Programador: \nNombre: $nombre, Edad: $edad, Nivel: $nivel, Direccion: $direccion, Telefono: $telefono, Lenguaje de programacion: $lenguajeDominante';
  }
}
void main(){
  final Empleado1 = new Empleado("Maria", 28, "Asistente administrativo");
  final Programador1 = new Programador("Daniela", 18, "Senior", "Carrera18-calle25,casa N°8", "3144235678", "Java");
  print(Empleado1);
  print(Programador1);
}