import 'dart:io';

void main(){
  final cancion01 = new Cancion("Los pollitos dicen","Pio Pio");
  int opc;
  do {
    print("-------MENU------");
    print("1.Mostrar titulo");
    print("2.Mostrat autor");
    print("3.Poner titulo");
    print("4.Poner autor");
    print("Digite una opcion:");
    opc = int.parse(stdin.readLineSync()!);

    switch(opc){
      case 1:
      cancion01.dameTitulo();
      break;

      case 2:
      cancion01.dameAutor();
      break;

      case 3:
      cancion01.ponTitulo();
      break;

      case 4:
      cancion01.ponAutor();
      break;

      default:
      print("Opcion invalida");
      break;
    }

  } while (opc!=5);
}

class Cancion{
  String titulo;
  String autor;
  
  Cancion(this.titulo,this.autor){
    this.titulo = titulo;
    this.autor = autor;
  }
  void dameTitulo(){
    print("El titulo de la cancion es $titulo");
  }
  void dameAutor(){
    print("El autor de la cancion es $autor");
  }

  void ponTitulo(){
    print("Digite el titulo de la cancion");
    String cancion = stdin.readLineSync()!.toLowerCase();

    titulo = cancion;
  }
  void ponAutor(){
    print("Digite el autor de la cancion");
    String cantante = stdin.readLineSync()!.toLowerCase();
    autor = cantante;
  }
}