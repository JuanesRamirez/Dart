class Empleado{
  String nombres;
  String puesto;

  Empleado(this.nombres,this.puesto);

  void empleado(){
    print("Empleado : $nombres , Puesto: $puesto");
  }
}

class Programador extends Empleado{
  Programador(String nombre) :super(nombre, "Programador");

  void programador(){
    print("$nombres esta programando");
  }
}

void main(){
  var empleado = new Empleado("Samuel", "Gerente");
  empleado.empleado();

  var programador = new Programador("Manuel");
  programador.programador();
}
