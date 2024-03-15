import 'dart:io';
void main(){
  List <String> asignaturas =['Matematicas','Fisica','Quimica','Historia','Lenguas'];
  List <double> notas =[];
  double nota = 0;
   asignaturas.forEach((x) {
    print("Por favor diga la nota de la asignatura ${x}");
    nota = double.parse(stdin.readLineSync().toString());
    notas.add(nota);
  });

  for(int i=0;i<asignaturas.length;i++){
    print("En asignatura ${asignaturas[i]} saco ${notas[i]}");
  } 
}