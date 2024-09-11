import 'dart:io';

class Empleado {
  String cedula;
  double sueldoBase;
  double pagoHoraExtra;
  int horasExtra;
  bool casado;
  int hijos;

  Empleado(this.cedula, this.sueldoBase, this.pagoHoraExtra, this.horasExtra, this.casado, this.hijos);

  double calcularPagoHorasExtra() {
    return pagoHoraExtra * horasExtra;
  }

  double calcularSueldoBruto() {
    return sueldoBase + calcularPagoHorasExtra();
  }

  double calcularRetenciones() {
    double retencion = calcularSueldoBruto() * 0.02;
    if (casado) {
      retencion -= 0.02;
    }
    retencion -= hijos * 0.01;
    return retencion;
  }

  double calcularSueldoNeto() {
    return calcularSueldoBruto() - calcularRetenciones();
  }

  void mostrarInformacionBasica() {
    print('Cédula: $cedula');
  }

  void mostrarInformacionCompleta() {
    print('Cédula: $cedula');
    print('Sueldo base: \$${sueldoBase}');
    print('Pago por hora extra: \$${pagoHoraExtra}');
    print('Horas extra realizadas: $horasExtra');
    print('Casado: $casado');
    print('Número de hijos: $hijos');
    print('Sueldo bruto: \$${calcularSueldoBruto()}');
    print('Retenciones: \$${calcularRetenciones()}');
    print('Sueldo neto: \$${calcularSueldoNeto()}');
  }
}

void main() {
  print('Ingrese la cédula del empleado:');
  String cedula = stdin.readLineSync()!;
  print('Ingrese el sueldo base del empleado:');
  double sueldoBase = double.parse(stdin.readLineSync()!);
  print('Ingrese el pago por hora extra:');
  double pagoHoraExtra = double.parse(stdin.readLineSync()!);
  print('Ingrese las horas extra realizadas:');
  int horasExtra = int.parse(stdin.readLineSync()!);
  print('¿El empleado está casado? (true/false):');
  bool casado = stdin.readLineSync()!.toLowerCase() == 'true';
  print('Ingrese el número de hijos:');
  int hijos = int.parse(stdin.readLineSync()!);

  Empleado empleado = Empleado(cedula, sueldoBase, pagoHoraExtra, horasExtra, casado, hijos);

  print('\nInformación básica del empleado:');
  empleado.mostrarInformacionBasica();

  print('\nInformación completa del empleado:');
  empleado.mostrarInformacionCompleta();
}
