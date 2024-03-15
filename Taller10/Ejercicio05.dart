import 'dart:io';

void main() {
  List<int> lista1 = [];
  List<int> lista2 = [];

  print('Ingrese los valores para la lista 1:');
  for (int i = 0; i < 15; i++) {
    print('Ingrese el valor ${i+1}:');
    lista1.add(int.parse(stdin.readLineSync()!));
  }

  print('Ingrese los valores para la lista 2:');
  for (int i = 0; i < 15; i++) {
    print('Ingrese el valor ${i+1}:');
    lista2.add(int.parse(stdin.readLineSync()!));
  }

  int sumaLista1 = 0;
  for (int i = 0; i < lista1.length; i++) {
    sumaLista1 += lista1[i];
  }

  int sumaLista2 = 0;
  for (int i = 0; i < lista2.length; i++) {
    sumaLista2 += lista2[i];
  }

  if (sumaLista1 > sumaLista2) {
    print('Lista 1 mayor');
  } else if (sumaLista1 < sumaLista2) {
    print('Lista 2 mayor');
  } else {
    print('Listas iguales');
  }
}
