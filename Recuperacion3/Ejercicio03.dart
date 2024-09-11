import 'dart:io';

void main(){
  List<int> nGnadores = [];

  print("Digite la cantidad de numeros a ingresar");
  int cnumeros = int.parse(stdin.readLineSync()!);

  for(int i=0;i<cnumeros;i++){
    print("Digite el numero ganador $i");
    int numero = int.parse(stdin.readLineSync()!);

    nGnadores.add(numero);
  }
  nGnadores.sort();

  print("Numeros organizados de mayor a menor:\n");
  print(nGnadores.reversed);
}