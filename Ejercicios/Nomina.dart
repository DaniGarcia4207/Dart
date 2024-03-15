import 'dart:io';
void main(){
    print("Para realizar la nomina ingrese la siguiente informacion: ");
    print("Numero de empleados");
    int NuEmpleados = int.parse(stdin.readLineSync().toString());
    print("numero de horas trabajadas");
    int Nhoras = int.parse(stdin.readLineSync().toString());
    print("valor por hora de trabajo");
    int Vhora = int.parse(stdin.readLineSync().toString());

    if(NuEmpleados > 50){
      double descuento = ((Nhoras*Vhora)*0.20)*NuEmpleados;
      double Pfinal = (NuEmpleados*(Nhoras*Vhora))+descuento;
      print("La nomina es de $Pfinal pesos con el subsidio de transporte");
    }else{
      int Pfinal = (Nhoras*Vhora)*NuEmpleados;
      print("La nomina es de $Pfinal pesos");
    }

}