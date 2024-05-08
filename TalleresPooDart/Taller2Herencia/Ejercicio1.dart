/*Escriba una clase Multimedia para almacenar información de los objetos de tipo multimedia 
(películas, discos, mp3,mp4…). Esta clase contiene título, autor, formato, y duración como 
atributos. El formato puede ser uno de los siguientes: wav, mp3, midi, avi, mov, mpg, 
cdAudio y dvd. El valor de todos los atributos se pasa por parámetro en el momento de crear 
el objeto. Esta clase tiene además, un método para devolver cada uno de los atributos y un 
método toString() que devuelve la información del objeto. Por último, un método equals() 
que recibe un objeto de tipo Multimedia y devuelve true en caso de que el título y el autor 
sean iguales y false en caso contrario.*/

class Multimedia{
  String titulo="";
  String autor="";
  String formato="";
  String duracion="";

  Multimedia(this.titulo,this.autor,this.formato,this.duracion){

  }
  String getTitulo() {
    return titulo;
  }
  String getAutor() {
    return autor;
  }
  String toString() {
    return 'El archivo multimedia llamado: ${titulo}tiene como autor: ${autor}, formato: ${duracion} y dura ${duracion}';
  }
   bool equals(Multimedia other) {
    return this.titulo == other.titulo && this.autor == other.autor;
  }
}
void main(){
  final Multimedia cancion = new Multimedia("Eres mia","Romeo santos", "cdAudio", "5 minutos");
  cancion.toString();
  final Multimedia video = new Multimedia("la bella y la bestia","Bill Condon", "mp4", "1 hora");
  final Multimedia video2 = new Multimedia("la bella y la bestia","Bill Condon", "mp4", "1 hora");
  video.equals(video);
  print(cancion); 
  print("${video.equals(video2)}: El titulo y autor de los objetos son iguales son iguales");
}
