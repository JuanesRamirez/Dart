// void main(){
//   // final edison = new Persona("Edison",25);
//   // edison.caracteristicas();
//   // var Juan = new Empleado("Juan",37);
//   // Juan.caracteristicas();
//   // Juan.decirCargo();

//   final juan = new Empleado( "Contratista", 2000000);
//   juan.caracteristicas();



// }

// class Persona{
//   String nombre;
//   int edad;

//   Persona(this.nombre,this.edad){
//     this.nombre = nombre;
//     this.edad = edad;

//   }
//   void caracteristicas(){
//     print("El nombre es $nombre");
//     print("La edad es $edad");
//   }
// }

// class Empleado extends Persona{
//   Empleado(this.cargo,this.sueldo):super(cargo,sueldo);
//   String cargo;
//   int sueldo;

//   void decirCargo(){
//     print("Soy $cargo");
//     print("Mi sueldo es $sueldo");
//   }
// }

// class Contratista extends Empleado{
//   Contratista(String nombre,int edad,String cargo,int sueldo):super(nombre,edad);

//   void informacion(){
//     print("Nombre $nombre");
//     print("Edad $edad");
//     print("Cargo $cargo");
//     print("Sueldo $sueldo");
//   }
// }



void main() {
  // Lista de números ganadores
  List<int> numerosGanadores = [8, 15, 3, 22, 11, 5, 30, 12];
  
  // Ordenar la lista de mayor a menor
  numerosGanadores.sort((a, b) => b.compareTo(a));
  
  // Imprimir la lista ordenada
  print('Números ordenados de mayor a menor:');
  for (var numero in numerosGanadores) {
    print(numero);
  }
  
  // Inicializar variables para el número mayor y menor
  int numeroMayor = numerosGanadores[0];
  int numeroMenor = numerosGanadores[0];
  
  // Iterar sobre la lista para encontrar el número mayor y menor
  for (var numero in numerosGanadores) {
    if (numero > numeroMayor) {
      numeroMayor = numero;
    }
    if (numero < numeroMenor) {
      numeroMenor = numero;
    }
  }
  
  // Calcular el promedio
  double promedio = numerosGanadores.reduce((a, b) => a + b) / numerosGanadores.length;
  
  // Imprimir el número mayor
  print('Número mayor: $numeroMayor');
  
  // Imprimir el número menor
  print('Número menor: $numeroMenor');
  
  // Imprimir el promedio
  print('Promedio de los números: $promedio');
}
