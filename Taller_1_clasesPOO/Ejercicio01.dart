import 'dart:io';

void main(){
  final cuenta01 = new CuentaBancaria("123456", "654321", 100000);
  int opc;
  do {
    print("-------MENU------");
    print("1.Ingresar dinero");
    print("2.Retirar dinero");
    print("3.Mostra datos");
    print("Digite una opcion:");
    opc = int.parse(stdin.readLineSync()!);

    switch(opc){
      case 1:
      cuenta01.ingresar();
      break;

      case 2:
      cuenta01.retirar();
      break;

      case 3:
      cuenta01.mostrar();
      break;

      default:
      print("Opcion invalida");
      break;
    }

  } while (opc!=4);
}

class CuentaBancaria{
  String numero;
  String nCliente;
  int saldo;
  
  CuentaBancaria(this.numero,this.nCliente,this.saldo){
    this.numero = numero;
    this.nCliente = nCliente;
    this.saldo = saldo;
  }
  void ingresar(){
    print("Ingrese la cantidad de dinero");
    int ingreso = int.parse(stdin.readLineSync()!);

    saldo = saldo + ingreso;
  }

  void retirar(){
    print("Digite la cantidad a retirar");
    int retiro = int.parse(stdin.readLineSync()!);

    if(retiro>saldo){
      print("El retiro excede el saldo actual");
    }
    else{
      saldo = saldo - retiro;
      print("La cantidad retirada es $retiro");
    }
  }
  void mostrar(){
    print("-------Datos de cuenta------");
    print("Numero de cuenta $numero");
    print("N# Documento de Cliente $nCliente");
    print("Saldo de la cuenta $saldo");
  }
}