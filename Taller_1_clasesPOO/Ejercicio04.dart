class Persona{
    String nombre; 

    Persona(this.nombre){
        this.nombre= nombre;
    }
}
class Fecha {
    int dia;
    int mes;
    int anio;

    Fecha(this.dia, this.mes, this.anio){
        this.dia= dia;
        this.mes= mes;
        this.anio= anio;
    }
}

class Libro{
    String titulo; 
    Persona autor; 
    String isbn; 
    int paginas; 
    int edicion; 
    String editorial; 
    String ciudad; 
    String pais; 
    Fecha fechaEdicion; 

    Libro(this.titulo, this.autor, this.isbn, this.paginas, this.edicion, this.editorial, this.ciudad, this.pais, this.fechaEdicion){
        this.titulo= titulo;
        this.autor= autor;
        this.isbn= isbn;
        this.paginas= paginas;
        this.editorial= editorial;
        this.ciudad= ciudad;
        this.pais = pais;
        this.fechaEdicion= fechaEdicion;
    }

    void mostrarInformacion() {
        print('Título: $titulo');
        print('Autor: ${autor.nombre}');
        print('ISBN: $isbn');
        print('Páginas: $paginas');
        print('Edición: $edicion');
        print('Editorial: $editorial');
        print('Lugar: $ciudad, $pais');
        print('Fecha de Edición: ${fechaEdicion.dia}/${fechaEdicion.mes}/${fechaEdicion.anio}');
    }
}

void main(){

final autor = Persona('Miguel de cervantes');
final fechaEdicion = Fecha(16, 01, 1605);
final libro = Libro('Quijote de la mancha',autor,'123-45-432-1234-7',471,1,'Editorial Colombina','Cali','Colombia',fechaEdicion);

libro.mostrarInformacion();

}