/*Hacer un aplicativo para el SENA con la información tanto de aprendices como 
instructores se debe conocer: Cédula, nombres, edad y sexo; adicional de aprendices, 
hay que registrar la calificación (entre 0 y 10) y del instructor la materia asignada. Las 
asignaturas ofertadas son: Programación Orientada a Objetos, Estructura de datos, 
Estructuras discretas. Los aprendices tendrán el 70% de posibles faltas máximas, por 
tanto, si faltan a clase, quedara registrado. El Instructor tiene el 20% para no 
encontrarse disponible por reuniones, bajas, etc. 
El aula debe registrarse con: un identificador numérico, el número máximo de 
aprendices y para que asignatura esta destinada. Agregue al menos dos atributos más 
que analice pertinentes. En un aula, para que se pueda dar clase se requiere de la 
disponibilidad del instructor designado para dicha asignatura, y al menos de %60 de 
alumnos presentes. Cree un aula de alumnos y un instructor y determine si puede 
darse clase, teniendo en cuenta las condiciones anteriores. Si se puede dar clase 
mostrar cuantos alumnos y alumnas (por separado) están aprobados de momento 
(utilice el mínimo establecido).*/


class Persona{
  String Cedula;
  String Nombres;
  int Edad;
  String Genero;

  Persona(this.Cedula,this.Nombres,this.Edad,this.Genero);
} 

class Aprendices extends Persona{
  double calificacion;
  int faltas;

  Aprendices(String Cedula, String Nombres, int Edad, String Genero, this.calificacion,this.faltas):super(Cedula,Nombres,Edad,Genero);
}

class Instructor extends Persona{
  String materiaAsignada;
  double disponibilidad;

  Instructor(String Cedula, String Nombres, int Edad, String Genero, this.materiaAsignada,this.disponibilidad):super(Cedula,Nombres,Edad,Genero);
}

class Aula {
  int identificador;
  int aprendicesMax;
  String Asignatura;
  List<Aprendices> listaAprendices;
  Instructor instructor;

  Aula(this.identificador,this.aprendicesMax,this.Asignatura,this.listaAprendices,this.instructor){
    listaAprendices = [];
  }

  bool puedeDarClase(List<Aprendices> listaAprendicesIm) {
    double porcentajeMinPresente = 0.60;
    int faltasTotales=0;
    int totalAprendices = listaAprendicesIm.length;

    listaAprendicesIm.forEach((aprendiz) {
    faltasTotales = faltasTotales + aprendiz.faltas;
    });

    double porcentajePresente = (totalAprendices - faltasTotales) / totalAprendices;

    return porcentajePresente >= porcentajeMinPresente && instructor.disponibilidad>0.20;
  }

  String catidadAprobados(listaAprendicesIm){
    int HombresAprobados=0;
    int MujeresAprobadas=0;
    double calificacion=0.0;
    int aprobados=0;
    listaAprendicesIm.forEach((aprendiz) {
    calificacion = aprendiz.calificacion;
      if(calificacion>=5 && calificacion<=10){
        aprobados++;
        if(aprendiz.Genero=="M"){
          HombresAprobados++;
        }else{
          MujeresAprobadas++;
        }
      }
    });
    String respuesta = "Cantidad de aprobados: ${aprobados}\n Cantidad de mujeres aprobadas: ${MujeresAprobadas}\n Cantidad de hombres aprobados: ${HombresAprobados}";
    return respuesta;
  }
}

void main() {
  // instructor
  Instructor instructor = Instructor('123456789', 'Edison Sandobal', 35, 'M', 'Programación Orientada a Objetos',0.60);
  
  //aprendices
  Aprendices aprendiz1 = Aprendices('987654321', 'Maria Lopez', 25, 'F', 7.5, 0);
  Aprendices aprendiz2 = Aprendices('987654322', 'Carlos Rodriguez', 26, 'M', 4.0, 0);
  Aprendices aprendiz3 = Aprendices('987654322', 'Dahiana Quintero', 22, 'F', 6.0, 1);

  //Lista Aprendices
  List<Aprendices> listaAprendices=[];
  listaAprendices.add(aprendiz1);
  listaAprendices.add(aprendiz2);
  listaAprendices.add(aprendiz3);

  //aula
  Aula aula = Aula(1, 30, 'Programación Orientada a Objetos', listaAprendices, instructor);
  
  if (aula.puedeDarClase(listaAprendices)==true) {
    print('Se puede dar clase en el aula ${aula.identificador}.');
    print(aula.catidadAprobados(listaAprendices));
  } else {
    print('No se puede dar clase en el aula ${aula.identificador}.');
  }
}
