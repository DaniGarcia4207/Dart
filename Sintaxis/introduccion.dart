import 'dart:io';
void main(){
    /*var lista[10];
    print(lista);

    String cadena1 = "Esto es una cadena";
    String cadena2 = 'Esto es una cadena';
    print("cadena1 :"+cadena1+", cadena2 :"+cadena2);

    int entero=32;
    double decimal = 1.5;

    bool bandera = true;
    print(bandera);

    dynamic name = "Dart";
    print(name);

    dynamic a ='abc';
    a=123;
    a=true;
    print(a);

    var a;
    a=123;
    a=true;
    print(a);

    var lista ={1,2,3,4,5};
    print(lista);

    List numeros=[1,2,3,4,5,];
    print(numeros);
    //COMO AGREGAR UN NUEVO ELEMENTO A LA LISTA
    numeros.add(6);
    print(numeros);
    //LAS LISTAS SON ELEMENTOS DINAMICOS
    numeros.add("hola");
    print(numeros);

    List<int> numeros=[1,2,3,4,5];
    print (numeros);
    numeros[0]=6;
    print(numeros);
    //no se puede agregar otro tipo de dato si esta definido numeros.add("hola");

    Set grupo;
    grupo = Set.from(['musica','programacion','logica']);
    grupo.remove('programacion');
    print(grupo);
    //AGREGAR ELEMENTOS CON ADD 
    //LOS CONJUNTOS TAMBIEN SON DINAMICOS

    Map persona ={
        'nombre':'Carlos',
        'edad': 32,
        'solteros':true
        };
    print (persona);

    Map<String,dynamic>persona={
        'nombre':'Carlos',
        'edad': 32,
        'solteros':true
    };

    print("Personas planilladas para comite");
    Map<int,String> Personas = {1: 'Edison', 2: 'Esteban', 3:'Paula'};
    //Agregando elementos al mapa
    Personas.addAll({0: 'David'});
    print(Personas);

    print("Ingrese su nombre");
    String nombre = stdin.readLineSync().toString();
    //imprime el nombre
    print("Helo, $nombre");*/

    print("Sumando dos numeros");
    print("Escriba el primer numero");
    double n1 = double.parse(stdin.readLineSync().toString());
    print("escriba el segundo numero");
    double n2 = double.parse(stdin.readLineSync().toString());
    print("la suma de $n1 mas $n2 es :");
    print(n1 + n2);


    /*var year;
    print("por favor digite el año");
    print("Helo, $year");
    if(year >=2001){
        print ('21st century');
    }else if(year>=1901){
        print ('20th century');
    }*/

}