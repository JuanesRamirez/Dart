class Multimedia{
  String titulo;
  String autor;
  String formato;
  String duracion;

  Multimedia(this.titulo,this.autor,this.formato,this.duracion);

  void atributos(){
    print("Titulo : $titulo");
    print("Autor : $autor");
    print("Formato : $formato");
    print("Duracion : $duracion");
  }
  void equals(){
    bool equals(Object other) {
    if (identical(this, other)) return true;
    else{
      return false;
    }
    }
  }
}
void main(){
  final multimedia = new Multimedia("Billie jean", "Michael jackson", "mp3", "3:30 minutos");
  multimedia.atributos();
  multimedia.equals();
}