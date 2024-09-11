import 'dart:io';

class Aprendiz {
  String numeroDocumento;
  String nombre;
  double notaProgramacion;

  Aprendiz(this.numeroDocumento, this.nombre, this.notaProgramacion);
}

void main() {
  List<Aprendiz> listaAprendices = [];

  // Función para agregar un aprendiz a la lista
  void agregarAprendiz() {
    print('Ingrese el número de documento del aprendiz: ');
    String numeroDocumento = stdin.readLineSync()!;
    print('Ingrese el nombre del aprendiz: ');
    String nombre = stdin.readLineSync()!;
    print('Ingrese la nota de programación del aprendiz: ');
    double notaProgramacion = double.parse(stdin.readLineSync()!);

    listaAprendices.add(Aprendiz(numeroDocumento, nombre, notaProgramacion));
  }

  // Función para consultar la nota de un aprendiz
  void consultarNota() {
  print('Ingrese el número de documento del aprendiz: ');
  String numeroDocumento = stdin.readLineSync()!;
  
  var aprendiz = listaAprendices.firstWhere(
      (aprendiz) => aprendiz.numeroDocumento == numeroDocumento,
      orElse: () => Aprendiz('', '', 0.0)); // Devuelve un Aprendiz vacío si no se encuentra ninguno
  
  if (aprendiz.nombre.isNotEmpty) { // Verifica si se encontró un aprendiz
    print('La nota de programación de ${aprendiz.nombre} es: ${aprendiz.notaProgramacion}');
  } else {
    print('No se encontró ningún aprendiz con ese número de documento.');
  }
  }

  // Función para mostrar la mayor nota
  void mostrarMayorNota() {
    var mayorNota = listaAprendices.map((aprendiz) => aprendiz.notaProgramacion).reduce((a, b) => a > b ? a : b);
    print('La mayor nota en programación es: $mayorNota');
  }

  // Función para mostrar la menor nota
  void mostrarMenorNota() {
    var menorNota = listaAprendices.map((aprendiz) => aprendiz.notaProgramacion).reduce((a, b) => a < b ? a : b);
    print('La menor nota en programación es: $menorNota');
  }

  // Función para mostrar la nota promedio
  void mostrarNotaPromedio() {
    var totalNotas = listaAprendices.map((aprendiz) => aprendiz.notaProgramacion).reduce((a, b) => a + b);
    var promedio = totalNotas / listaAprendices.length;
    print('La nota promedio en programación es: $promedio');
  }

  // Función para mostrar quiénes aprobaron (nota mayor a 3)
  void mostrarAprobados() {
    var aprobados = listaAprendices.where((aprendiz) => aprendiz.notaProgramacion > 3);
    print('Los aprendices que aprobaron son:');
    for (var aprendiz in aprobados) {
      print('${aprendiz.nombre} - Nota: ${aprendiz.notaProgramacion}');
    }
  }

  // Menú de opciones
  while (true) {
    print('\n-- Menú --');
    print('1. Agregar aprendiz');
    print('2. Consultar nota de un aprendiz');
    print('3. Mostrar mayor nota');
    print('4. Mostrar menor nota');
    print('5. Mostrar nota promedio');
    print('6. Mostrar quiénes aprobaron');
    print('7. Salir');
    stdout.write('Ingrese el número de la opción que desea: ');
    var opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        agregarAprendiz();
        break;
      case 2:
        consultarNota();
        break;
      case 3:
        mostrarMayorNota();
        break;
      case 4:
        mostrarMenorNota();
        break;
      case 5:
        mostrarNotaPromedio();
        break;
      case 6:
        mostrarAprobados();
        break;
      case 7:
        exit(0);
        break;
      default:
        print('Opción inválida. Por favor, ingrese una opción válida.');
    }
  }
}
