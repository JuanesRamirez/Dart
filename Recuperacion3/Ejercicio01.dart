import 'dart:io';

void main(){

  Map<int,String> Personas = {
    3800:"Juan",
    3421:"David"
  };

  bool resp = true;

  while(resp){
    print("<------------>");
    print("<----MENU---->");
    print("1.Ver personas");
    print("2.Crear personas");
    print("3.Eliminar perona");
    print("4.Editar perona");
    print("5.Buscar perona");
    print("6.Terminar programa");
    print("<------------------>\n");

    print("Digite una opcion");
    int opcion = int.parse(stdin.readLineSync()!);
    switch(opcion){
      case 1:
      Personas.forEach((key, value) {
        print("Cedula : $key --- Nombre $value");
      });
      break;

      case 2:
      print("Ingrese la cedula");
      int cedulaNueva = int.parse(stdin.readLineSync()!);

      print("Digite el nombre");

      String nombre = (stdin.readLineSync()!);

      Personas[cedulaNueva] = nombre;
      break;

      case 3:
      print("Digite la cedula de la persona a eliminar");
      int cedulaEliminar = int.parse(stdin.readLineSync()!);

      if(Personas.containsKey(cedulaEliminar)){
        Personas.remove(cedulaEliminar);

        print("Eliminado correctamente");
      }
      else{
        print("Cedula inexistente");
      }
      break;

      case 4:
      print("Ingrese la cedula del usuario a modificar");
      int cedulaModificar = int.parse(stdin.readLineSync()!);

      if(Personas.containsKey(cedulaModificar)){
        print("Digite el nuevo nombre");
        String nuevoNombre = (stdin.readLineSync()!);
        Personas[cedulaModificar] = nuevoNombre;

        print("Usuario modificado con exito");
      }
      else{
        print("Cedula inexistente");
      }
      break;

      case 5:
      print("Digite la cedula del usuario a buscar");
      int cedulaBuscar = int.parse(stdin.readLineSync()!);
      if(Personas.containsKey(cedulaBuscar)){
        print("${Personas[cedulaBuscar]} Cedula: $cedulaBuscar");
      }
      else{
        print("Cedula inexistente");
      }
      break;case 6:
      print("Saliendo del programa");
      resp = false;
      default:
      print("Error");
    }


  }
}