import 'dart:io';

class Animal{
  String nombre;
  int edad;

  Animal(this.nombre,this.edad);


}

class Perro extends Animal{
  Perro(String nombre,int edad,this.raza):super(nombre,edad);

  String raza;

  void informacion(){
    print("Nombre $nombre");
    print("Edad $edad");
    print("Raza $raza");
  }


}

void main(){
  final perro1 = new Perro("", 0, "");

  perro1.ingresarDatos();
  
  
  print("Menu");
  print("1.Ver datos");
  int opcion = int.parse(stdin.readLineSync()!);

  if(opcion==1){
    perro1.informacion();
  }

}
