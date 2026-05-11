import 'informativo.dart';
import 'livro.dart';

class LivroFisico extends Livro implements Informativo {
  int _quantidadePaginas = 1;

  LivroFisico(String titulo, String autor, int quantidadePaginas)
    : super(titulo, autor) {
    this.quantidadePaginas = quantidadePaginas;
  }

  int get quantidadePaginas => _quantidadePaginas;

  set quantidadePaginas(int quantidadePaginas) {
    if (quantidadePaginas <= 0) {
      print(
        'Quantidade de páginas deve ser positiva. Mantida: $_quantidadePaginas',
      );
      return;
    }

    _quantidadePaginas = quantidadePaginas;
  }

  @override
  void exibirInformacoes() {
    print('Livro físico');
    print('Título: $titulo');
    print('Autor: $autor');
    print('Quantidade de páginas: $quantidadePaginas');
  }
}
