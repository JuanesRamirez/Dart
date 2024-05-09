class Empleado{
  String nombre;
  int minTrabajados;

  Empleado(this.nombre,this.minTrabajados);

  void minutosExtras(){
    if(minTrabajados>500){
      var minExtras = minTrabajados - 500;
      print("$nombre trabajó : $minExtras minutos Extras");
    }
    else{
      print("$nombre no trabajó minutos extras");
    }
  }
}

void main(){
  var empleado = new Empleado("Miguel", 540);
  empleado.minutosExtras();
}