/*Escribir un programa que almacene el diccionario con los créditos de las asignaturas 
de un curso {'Matemáticas': 6, 'Física': 4, 'Química': 5} y después muestre por pantalla 
los créditos de cada asignatura en el formato <asignatura> tiene <créditos> créditos, 
donde <asignatura> es cada una de las asignaturas del curso, y <créditos> son sus 
créditos. Al final debe mostrar también el número total de créditos del curso.*/
void main(){
  int suma =0;
  Map<String, int> asignaturas={
    'Matematicas' :6,
    'Fisica': 4,
    'Quimica': 5
  };
  asignaturas.forEach((Key,value){
    print("Asignatura ${Key} tiene ${value} creditos");
    suma = suma + value;
  });
  print("El total de creditos del curso es ${suma}");
}