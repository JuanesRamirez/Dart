import 'dart:async';

class Precio{
  double valor;

  Precio(this.valor);
}

class Factura extends Precio{
  String emisor;
  String cliente;

  Factura(double valor,this.emisor,this.cliente) : super(valor);

  void imprimirFactura(){
    print("Emisor : $emisor, Cliente : $cliente, Valor: $valor");
  }
}

void main(){
  final facturaEjemplo = new Factura(56000, "Carlos", "Juan");
  facturaEjemplo.imprimirFactura(); 
}

