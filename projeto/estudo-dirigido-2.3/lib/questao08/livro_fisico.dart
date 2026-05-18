import 'informativo.dart';
import 'livro.dart';

class LivroFisico extends Livro implements Informativo {
  int _quantidadePaginas = 1;

  LivroFisico(super.titulo, super.autor, int quantidadePaginas) {
    this.quantidadePaginas = quantidadePaginas;
  }

  int get quantidadePaginas => _quantidadePaginas;

  set quantidadePaginas(int quantidadePaginas) {
    if (quantidadePaginas <= 0) {
      print('Quantidade de páginas deve ser positiva. Mantida: $_quantidadePaginas');
      return;
    }
    _quantidadePaginas = quantidadePaginas;
  }

  @override
  void exibirInformacoes() {
    print('Livro Físico | Título: $titulo | Autor: $autor | Páginas: $quantidadePaginas');
  }

  @override
  String toString() {
    return 'Livro Físico | Título: $titulo | Autor: $autor | Páginas: $quantidadePaginas';
  }
}
