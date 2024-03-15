
void main(){
  double ciudadA = 3.5;
  double ciudadB = 5.0;
  double crecimientoA=0; //15
  double crecimientoB=0; //7
  int anio = 1980;
  while(ciudadA<=ciudadB){
    crecimientoA = ciudadA * 15/100;
    crecimientoB = ciudadB * 7/100;
    ciudadA = ciudadA + crecimientoA;
    ciudadB = ciudadB + crecimientoB;
    anio++;
  }
  print("La poblacion de la ciudadA es mayor a la de la ciudadB en el año ${anio}");
}