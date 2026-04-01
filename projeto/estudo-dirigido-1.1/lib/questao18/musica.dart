class Musica {
  String titulo;
  String artista;
  int duracao;

  Musica(this.titulo, this.artista, this.duracao) {
    if (titulo.isEmpty) {
      titulo = "Sem título";
    }
    if (artista.isEmpty) {
      artista = "Desconhecido";
    }
    if (duracao <= 0) {
      duracao = 1;
    }
  }

  void exibir() {
    print("$titulo - $artista ($duracao s)");
  }
}
