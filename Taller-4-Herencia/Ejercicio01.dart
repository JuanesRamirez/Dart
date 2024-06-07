import 'dart:io';

class Pelicula {
  String nombre;
  String genero;
  String pais;

  Pelicula(this.nombre, this.genero, this.pais);
}

void main() {
  List<Pelicula> listaPeliculas = [];

  Pelicula p1 = Pelicula("Titanic", "drama", "Inglaterra");
  listaPeliculas.add(p1);

  Pelicula p2 = Pelicula("Matilda", "Comedia", "Estados Unidos");
  listaPeliculas.add(p2);

  while (true) {
    print('\n----Menu de Peliculas-----');
    print('1. Mostrar Lista de películas');
    print('2. Agregar película');
    print('3. Actualizar película');
    print('4. Eliminar película');
    print('5. Salir');
    print('Ingrese una opción: ');

    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        mostrarPeliculas(listaPeliculas);
        break;
      case 2:
        agregarPelicula(listaPeliculas);
        break;
      case 3:
        actualizarPelicula(listaPeliculas);
        break;
      case 4:
        eliminarPelicula(listaPeliculas);
        break;
      case 5:
        print('¡Hasta luego!');
        exit(0);
      default:
        print('Opción inválida. Intente nuevamente.');
    }
  }
}

void mostrarPeliculas(List<Pelicula> listaPeliculas) {
  if (listaPeliculas.isEmpty) {
    print('Aun no se han ingresado peliculas');
    return;
  }

  print('\n---- Lista de Películas ---');
  for (int i = 0; i < listaPeliculas.length; i++) {
    var pelicula = listaPeliculas[i];
    print('Pelicula ${i + 1}:');
    print('Título: ${pelicula.nombre}');
    print('Género: ${pelicula.genero}');
    print('País de Producción: ${pelicula.pais}\n');
  }
}

void agregarPelicula(List<Pelicula> listaPeliculas) {

  print('Ingrese el título de la película:');
  var nombre = stdin.readLineSync()!;

  print('Ingrese el género de la película:');
  var genero = stdin.readLineSync()!;

  print('Ingrese el país de producción de la película:');
  var pais = stdin.readLineSync()!;

  listaPeliculas.add(Pelicula(nombre,genero, pais));
  print('Se agrego la pelicula');
}


void actualizarPelicula(List<Pelicula> listaPeliculas) {
  print('Ingrese el número de la película que desea actualizar:');
  var indice = int.parse(stdin.readLineSync()!) - 1;
  if (indice < 0 || indice >= listaPeliculas.length) {
    print("No se encontro,intente otra vez");
    return;
  }

  print("Ingrese el nuevo título de la película");
  var nuevoNombre = stdin.readLineSync()!;

  print('Ingrese el nuevo género de la película:');
  var nuevoGenero = stdin.readLineSync()!;

  print('Ingrese el nuevo país de producción de la película:');
  var nuevoPais = stdin.readLineSync()!;

  var pelicula = listaPeliculas[indice];
  pelicula.nombre = nuevoNombre;
  pelicula.genero = nuevoGenero;
  pelicula.pais = nuevoPais;

  print("La pelicula se actualizo ");
}

void eliminarPelicula(List<Pelicula> listaPeliculas) {
  print('Ingrese el número de la película que desea eliminar:');
  var indice = int.parse(stdin.readLineSync()!) - 1;
  if (indice < 0 || indice >= listaPeliculas.length) {
    print("No se encontro,intente otra vez");
    return;
  }

  listaPeliculas.removeAt(indice);
  print("La pelicula se elimino");
}
