import '../questao03/produto.dart';

class ListaProduto {
  List<Produto> _produtos = [];

  void inserir(Produto p) {
    _produtos.add(p);
  }

  void remover(int i) {
    if (i >= 0 && i < _produtos.length) {
      _produtos.removeAt(i);
    }
  }

  int tamanho() {
    return _produtos.length;
  }

  Produto get(int i) {
    if (i >= 0 && i < _produtos.length) {
      return _produtos[i];
    }

    print("Índice inválido");
    return _produtos[0];
  }

  void exibirLista() {
    for (var p in _produtos) {
      p.exibirProduto();
    }
  }
}