class Producto {
    DateTime fechaVencimiento;
    String numeroLote;

    Producto(this.fechaVencimiento, this.numeroLote);
}

class ProductoFresco extends Producto {
    DateTime fechaEnvasado;
    String paisOrigen;

    ProductoFresco(DateTime fechaVencimiento, String numeroLote, this.fechaEnvasado, this.paisOrigen): super(fechaVencimiento, numeroLote);
}

class ProductoRefrigerado extends Producto {
    String codigoSupervision;
    DateTime fechaEnvasado;
    double tempMantenimiento;
    String paisOrigen;

    ProductoRefrigerado(DateTime fechaVencimiento, String numeroLote, this.codigoSupervision, this.fechaEnvasado,this.tempMantenimiento, this.paisOrigen): super(fechaVencimiento, numeroLote);
}

class ProductoCongelado extends Producto {
    DateTime fechaEnvasado;
    String paisOrigen;
    double tempMantenimiento;

    ProductoCongelado(DateTime fechaVencimiento, String numeroLote, this.fechaEnvasado, this.paisOrigen,this.tempMantenimiento): super(fechaVencimiento, numeroLote);
}

class ProductoCongeladoAire extends ProductoCongelado {
    double porcentajeNitrigeno;
    double porcentajeOxigeno;
    double porcentajeDioxidoCarbono;
    double porcentajeVaporAgua;

ProductoCongeladoAire(DateTime fechaVencimiento, String numeroLote, DateTime fechaEnvasado, String paisOrigen,double temperaturaMantenimiento, this.porcentajeNitrigeno, this.porcentajeOxigeno, this.porcentajeDioxidoCarbono,this.porcentajeVaporAgua): super(fechaVencimiento, numeroLote, fechaEnvasado, paisOrigen, temperaturaMantenimiento);
}


class ProductoCongeladoAgua extends ProductoCongelado {
    double salinidadAgua;

    ProductoCongeladoAgua(DateTime fechaVencimiento, String numeroLote, DateTime fechaEnvasado, String paisOrigen,double temperaturaMantenimiento, this.salinidadAgua): super(fechaVencimiento, numeroLote, fechaEnvasado, paisOrigen, temperaturaMantenimiento);
}


class ProductoCongeladoNitrogeno extends ProductoCongelado {
    String metodoCongelacion;
    int tiempoExposicionNitrogeno;

    ProductoCongeladoNitrogeno(DateTime fechaVencimiento, String numeroLote, DateTime fechaEnvasado, String paisOrigen,double temperaturaMantenimiento, this.metodoCongelacion, this.tiempoExposicionNitrogeno): super(fechaVencimiento, numeroLote, fechaEnvasado, paisOrigen, temperaturaMantenimiento);
}

void main() {
    final productoFresco = ProductoFresco(DateTime(2024, 6, 31), "123", DateTime(2024, 5, 8), "Colombia");
    final productoRefrigerado = ProductoRefrigerado(DateTime(2025, 7, 24), "456", "123456", DateTime(2024, 5, 8), 4.0, "Argentina");
    final productoCongeladoAire = ProductoCongeladoAire(DateTime(2026, 5, 8), "789", DateTime(2024, 5, 8), "Ecuador", -18.0, 80.0, 20.0, 0.0, 0.0);
    final productoCongeladoAgua = ProductoCongeladoAgua(DateTime(2025, 4, 6), "101", DateTime(2024, 5, 8), "Brazil", -18.0, 10.0);
    final productoCongeladoNitrogeno = ProductoCongeladoNitrogeno(DateTime(2026, 10, 30), "112", DateTime(2024, 5, 1), "China", -18.0, "Inmersión", 10);

    print(productoFresco.fechaEnvasado.toString().split(" ")[0]);
    print(productoRefrigerado.tempMantenimiento);
    print(productoCongeladoAire.porcentajeNitrigeno);
    print(productoCongeladoAgua.salinidadAgua);
    print(productoCongeladoNitrogeno.metodoCongelacion);
}