void main(){
  String mensaje = saludar(nombre:'Edison', texto:'Hola');
  print(mensaje);

  var numeros = List.from([1,2,3,4,5,6,]);
  numeros.forEach((element) {
    print(element);
  });

  var saborHelado=['chocolate','vainilla','arequipe'];
}
/*String saludar({String? texto, String? nombre}){
  return '$texto $nombre';
}*/

String saludar({String? texto, String? nombre})=> '$texto $nombre';

//Funciones anonimas
/*void main(){
  (nombreParametro){
    cuerpo de la funcion
  }
}*/
