/*Crea una clase Cuenta (bancaria) con atributos para el número de cuenta, el numero 
de documento del cliente, el saldo actual y el interés anual que se aplica a la cuenta 
(porcentaje). Define en la clase los siguientes métodos: 
• ActualizarSaldo: actualizará el saldo de la cuenta aplicándole el interés diario 
(interés anual dividido entre 365 aplicado al saldo actual). 
• Ingresar: permitirá ingresar una cantidad en la cuenta. 
• Retirar: permitirá sacar una cantidad de la cuenta (si hay saldo). 
• Mostrar: que nos permita mostrar todos los datos de la cuenta.*/ 
import 'dart:io';

class cuentaBancaria{
  String numeroCuenta=" ";
  String numeroDocumento=" ";
  int saldoActual=0;
  double interesAnual=0;

  cuentaBancaria(this.numeroCuenta, this.numeroDocumento, this.saldoActual,this.interesAnual){
    this.numeroCuenta=numeroCuenta;
    this.numeroDocumento = numeroDocumento;
    this.saldoActual = saldoActual;
    this.interesAnual=interesAnual;
  }

  void Ingresar(){
    print("Ingrese una cantidad en la cuenta");
    saldoActual = int.parse(stdin.readLineSync().toString());
  }
  void Retirar(){
    print("Ingrese la cantidad que desea retirar");
    int cantidadRetirar = int.parse(stdin.readLineSync().toString());
    if(cantidadRetirar<saldoActual){
        saldoActual = saldoActual-cantidadRetirar;
        print("Dinero retirado exitosamente");
    }
  }
  void Mostrar(){
     print("Numero de cuenta : ${numeroCuenta}");
     print("Numero de Documento : ${numeroDocumento}");
     print("Saldo Actual : ${saldoActual}");
     print("Interes Anual : ${interesAnual}");
  }
}
void main(){
  final cuentaDaniela = new cuentaBancaria("25212223", "1114398635", 0, 0);
  cuentaDaniela.Ingresar();
  cuentaDaniela.Retirar();
  cuentaDaniela.Mostrar();
}