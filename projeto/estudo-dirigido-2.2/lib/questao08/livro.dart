class Livro {
  String _titulo = 'Sem título';
  String _autor = 'Autor desconhecido';

  Livro(String titulo, String autor) {
    this.titulo = titulo;
    this.autor = autor;
  }

  String get titulo => _titulo;

  set titulo(String titulo) {
    if (titulo.trim().isEmpty) {
      print('Título não pode ser vazio. Mantido: $_titulo');
      return;
    }

    _titulo = titulo;
  }

  String get autor => _autor;

  set autor(String autor) {
    if (autor.trim().isEmpty) {
      print('Autor não pode ser vazio. Mantido: $_autor');
      return;
    }

    _autor = autor;
  }
}
