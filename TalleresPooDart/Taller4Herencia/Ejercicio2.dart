import 'dart:math';

class Curso {
  String nombre;
  List<Asignatura> asignaturas;

  Curso(this.nombre, this.asignaturas);
}

class Asignatura {
  String nombre;
  int creditos;
  bool esTeorica;

  Asignatura(this.nombre, this.creditos, this.esTeorica);
}

class Docente {
  String cedula;
  String nombre;
  String seccionDepartamental;
  String area;

  Docente(this.cedula, this.nombre, this.seccionDepartamental, this.area);
}

class Aula {
  String nombre;
  String ubicacion;
  int capacidad;

  Aula(this.nombre, this.ubicacion, this.capacidad);
}

class AulaTeorica extends Aula{
  String tipoPupitre; // Abatible o fijo para aulas de teoría
  AulaTeorica(String nombre, String ubicacion, int capacidad,this.tipoPupitre):super(nombre,ubicacion,capacidad);
}

class AulaPractica extends Aula{
  bool tieneAltavoces;
  bool tieneCamaraVideoconferencia;

  AulaPractica(String nombre, String ubicacion, int capacidad,this.tieneAltavoces,this.tieneCamaraVideoconferencia):super(nombre,ubicacion,capacidad);
}

void generarHorarios(List<Curso> cursos, List<Docente> docentes, List<Aula> aulas) {
 
  for (var curso in cursos) {
    print('Horario para el curso ${curso.nombre}:');
    for (var asignatura in curso.asignaturas) {
      var docente = docentes[Random().nextInt(docentes.length)];
      /*print("ingrese sus asignaturas");
      String asignaturaDocente = stdin.readLineSync().toString();
      print("De lunes a viernes escoga tres dias de clase");
      List<String> asignaturas=[];
      asignaturas.add(asignaturaDocente);
      String dia = stdin.readLineSync().toString();
      List<String> dias=[];
      dias.add(dia);*/
      var aula = aulas[Random().nextInt(aulas.length)];

      // Imprimimos la asignatura, el docente asignado y el aula asignada
      print(' - ${asignatura.nombre}: ${docente.nombre}, ${aula.nombre}');
    }
    print(''); // Salto de línea para separar cursos
  }
}
void main() {
  // Datos de ejemplo
  var curso1 = Curso('Primero', [
    Asignatura('Matemáticas', 3, true),
    Asignatura('Física', 3, true),
    Asignatura('Laboratorio de Física', 2, false)
  ]);

  var curso2 = Curso('Segundo', [
    Asignatura('Química', 3, true),
    Asignatura('Biología', 3, true),
    Asignatura('Laboratorio de Química', 2, false)
  ]);

  var curso3 = Curso('Tercero', [
    Asignatura('Programación', 3, true),
    Asignatura('Bases de datos', 3, true),
    Asignatura('Laboratorio de Programación', 2, false)
  ]);

  var cursos = [curso1, curso2, curso3];

  var docente1 = Docente('123456789', 'Juan Perez', 'Matemáticas', 'Ciencias');
  var docente2 = Docente('987654321', 'María Rodriguez', 'Química', 'Ciencias');
  var docentes = [docente1, docente2];

  var aula1 = AulaTeorica('Aula 101', 'Edificio A', 30, 'Abatible');
  var aula2 = AulaPractica('Laboratorio 201', 'Edificio B', 20,  true, true);
  var aulas = [aula1, aula2];

  // Generar horarios
  generarHorarios(cursos, docentes, aulas);
}
