import 'dart:io';

void main(){
  final cafetera01 = new Cafetera(1000, 0);
  int opc;
  do {
    print("-------MENU------");
    print("1.Servir cafe");
    print("2.Ingresar cafe");
    print("3.Vaciar cafetera");
    print("Digite una opcion:");
    opc = int.parse(stdin.readLineSync()!);

    switch(opc){
      case 1:
      cafetera01.servir();
      break;

      case 2:
      cafetera01.ingresarCafe();
      break;

      case 3:
      cafetera01.vaciar();
      break;

      default:
      print("Opcion invalida");
      break;
    }

  } while (opc!=4);
}

class Cafetera{
  int cMaxima;
  int cActual;
  
  Cafetera(this.cMaxima,this.cActual){
    this.cMaxima = cMaxima;
    this.cActual = cActual;
  }
  void servir(){
    print("Ingrese la cantidad de cafe a servir");
    int servido = int.parse(stdin.readLineSync()!);

    if(servido>cActual){
      print("La cantidad excede la capacidad actual");
      print("La cantidad servida es $cActual");
      cActual = cActual - cActual;
    }
    else{
      print("La cantidad servida es $servido");
      cActual = cActual - servido;
    }
  }

  void ingresarCafe(){
    print("Digite la cantidad de cafe a ingresar");
    int cafe = int.parse(stdin.readLineSync()!);
    if(cafe>0 && cafe<1000){
      print("Cafe ingresado correctamente");
      cActual = cActual + cafe;      
    }
    else{
      print("La cantidad ingresada es incorrecta");
    }
  }
  void vaciar(){
    cActual = 0;
  }
}