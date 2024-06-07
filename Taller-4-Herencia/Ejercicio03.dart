import 'dart:async';
import 'dart:io';

class Libro {
  String titulo;
  String categoria;

  Libro(this.titulo,this.categoria);
}

void main() {
  List<Libro> listaLibros = [];

  Libro l1 = Libro("100 años de soledad", "drama");
  listaLibros.add(l1);

  Libro l2 = Libro("El señor de los anillos", "Ciencia Ficcion");
  listaLibros.add(l2);

  bool resp=true;

  while (resp==true) {
    print('*------Libros------*');
    print('1.Mostrar lista de Libros ');
    print('2.Agregar libro');
    print('3.Buscar libro');
    print('4.Eliminar libro');
    print('5. Salir');
    print('Ingrese una opción: ');

    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        mostrarPeliculas(listaLibros);
        break;
      case 2:
        agregarPelicula(listaLibros);
        break;
      case 3:
        buscarLibro(listaLibros);
        break;
      case 4:
        eliminarPelicula(listaLibros);
        break;
      case 5:
        print('¡Hasta luego!');
        resp=false;
      default:
        print('Opción inválida. Intente nuevamente.');
    }
  }
}

void mostrarPeliculas(List<Libro> listaLibros) {
  if (listaLibros.isEmpty) {
    print('Aun no se han ingresado peliculas');
    return;
  }

  print('\n---- Lista de Películas ---');
  for (int i = 0; i < listaLibros.length; i++) {
    var pelicula = listaLibros[i];
    print('Libro ${i + 1}:');
    print('Título: ${pelicula.titulo}');
    print('Género: ${pelicula.categoria}');
  }
}

void agregarPelicula(List<Libro> listaLibros) {

  print('Ingrese el título de el Libro');
  var titulo = stdin.readLineSync()!;

  print('Ingrese el género de el Libro:');
  var categoria = stdin.readLineSync()!;

  listaLibros.add(Libro(titulo,categoria));
  print('Se agrego el libro');
}

void buscarLibro(List<Libro> listaLibros) {
  print("Digite el titulo del libro a buscar");
  var tituloBuscar = stdin.readLineSync()!;

  for (int i = 0; i < listaLibros.length; i++) {
    if (listaLibros[i].titulo.toLowerCase().contains(tituloBuscar.toLowerCase())) {
      print("Titulo: ${listaLibros[i].titulo}");
      print("Categoria: ${listaLibros[i].categoria}");
    }
  }
}

void eliminarPelicula(List<Libro> listaLibros) {
  print('Ingrese el número de la película que desea eliminar:');
  var indice = int.parse(stdin.readLineSync()!) - 1;
  if (indice < 0 || indice >= listaLibros.length) {
    print("No se encontro,intente otra vez");
    return;
  }

  listaLibros.removeAt(indice);
  print("El Libro se elimino");
}
