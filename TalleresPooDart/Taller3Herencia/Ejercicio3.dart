/*Se necesita un programa que sirva para determinar si debe o no pagarse horas extras a un 
empleado. Además, debe determinar la cantidad de MINUTOS extras que deben pagársele.*/
class Empleado {
  int horasTrabajadas;
  int horasRegulares;
  double pagoPorHora;
  int jornadaNormal;

  Empleado(this.horasTrabajadas, this.horasRegulares, this.pagoPorHora, this.jornadaNormal);

  int calcularHorasExtras() {
    int horasExtras = horasTrabajadas - horasRegulares;
    if (horasExtras > 0) {
      return (horasExtras * 60) % jornadaNormal;
    } else {
      return 0;
    }
  }
}

void main() {
  Empleado empleado = Empleado(45, 40, 10.0, 8 * 60);
  
  int minutosExtras = empleado.calcularHorasExtras();
  
  if (minutosExtras > 0) {
    print('El empleado tiene $minutosExtras minutos extras que deben pagarse.');
  } else {
    print('El empleado no tiene horas extras.');
  }
}