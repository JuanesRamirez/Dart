// import 'dart:io';

// void main(){
//   final cancion01 = new Cancion("Los pollitos dicen","Pio Pio");
//   int opc;
//   do {
//     print("-------MENU------");
//     print("1.Mostrar titulo");
//     print("2.Mostrat autor");
//     print("3.Poner titulo");
//     print("4.Poner autor");
//     print("Digite una opcion:");
//     opc = int.parse(stdin.readLineSync()!);

//     switch(opc){
//       case 1:
//       cancion01.dameTitulo();
//       break;

//       case 2:
//       cancion01.dameAutor();
//       break;

//       case 3:
//       cancion01.ponTitulo();
//       break;

//       case 4:
//       cancion01.ponAutor();
//       break;

//       default:
//       print("Opcion invalida");
//       break;
//     }

//   } while (opc!=5);
// }

// class Cancion{
//   String titulo;
//   String autor;
  
//   Cancion(this.titulo,this.autor){
//     this.titulo = titulo;
//     this.autor = autor;
//   }
//   void dameTitulo(){
//     print("El titulo de la cancion es $titulo");
//   }
//   void dameAutor(){
//     print("El autor de la cancion es $autor");
//   }

//   void ponTitulo(){
//     print("Digite el titulo de la cancion");
//     String cancion = stdin.readLineSync()!.toLowerCase();

//     titulo = cancion;
//   }
//   void ponAutor(){
//     print("Digite el autor de la cancion");
//     String cantante = stdin.readLineSync()!.toLowerCase();
//     autor = cantante;
//   }
// }


import 'dart:io';

void main() {
  final canciones = <Cancion>[
    Cancion("Los pollitos dicen", "Pio Pio"),
    Cancion("Estrellita", "Juanito"),
    Cancion("Cielito Lindo", "Lola")
  ];
  
  int opc;
  do {
    print("-------MENU------");
    print("1. Mostrar todas las canciones");
    print("2. Mostrar titulo de una cancion");
    print("3. Mostrar autor de una cancion");
    print("4. Poner titulo de una cancion");
    print("5. Poner autor de una cancion");
    print("6. Salir");
    print("Digite una opcion:");
    opc = int.parse(stdin.readLineSync()!);

    switch(opc) {
      case 1:
        canciones.forEach((cancion) {
          cancion.dameTitulo();
          cancion.dameAutor();
        });
        break;

      case 2:
        print("Digite el número de la canción para mostrar el título (0-${canciones.length - 1}):");
        int indexTitulo = int.parse(stdin.readLineSync()!);
        if (indexTitulo >= 0 && indexTitulo < canciones.length) {
          canciones[indexTitulo].dameTitulo();
        } else {
          print("Índice inválido");
        }
        break;

      case 3:
        print("Digite el número de la canción para mostrar el autor (0-${canciones.length - 1}):");
        int indexAutor = int.parse(stdin.readLineSync()!);
        if (indexAutor >= 0 && indexAutor < canciones.length) {
          canciones[indexAutor].dameAutor();
        } else {
          print("Índice inválido");
        }
        break;

      case 4:
        print("Digite el número de la canción para cambiar el título (0-${canciones.length - 1}):");
        int indexTituloCambio = int.parse(stdin.readLineSync()!);
        if (indexTituloCambio >= 0 && indexTituloCambio < canciones.length) {
          canciones[indexTituloCambio].ponTitulo();
        } else {
          print("Índice inválido");
        }
        break;

      case 5:
        print("Digite el número de la canción para cambiar el autor (0-${canciones.length - 1}):");
        int indexAutorCambio = int.parse(stdin.readLineSync()!);
        if (indexAutorCambio >= 0 && indexAutorCambio < canciones.length) {
          canciones[indexAutorCambio].ponAutor();
        } else {
          print("Índice inválido");
        }
        break;

      case 6:
        print("Saliendo...");
        break;

      default:
        print("Opción inválida");
        break;
    }

  } while (opc != 6);
}

class Cancion {
  String titulo;
  String autor;

  Cancion(this.titulo, this.autor);

  void dameTitulo() {
    print("El título de la canción es $titulo");
  }

  void dameAutor() {
    print("El autor de la canción es $autor");
  }

  void ponTitulo() {
    print("Digite el título de la canción:");
    String cancion = stdin.readLineSync()!;
    titulo = cancion;
  }

  void ponAutor() {
    print("Digite el autor de la canción:");
    String cantante = stdin.readLineSync()!;
    autor = cantante;
  }
}
