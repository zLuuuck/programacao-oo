import '../questao03/produto.dart';

class ListaProduto {
  final List<Produto> _produtos = [];

  void inserir(Produto produto) => _produtos.add(produto);

  void remover(int i) {
    if (i >= 0 && i < _produtos.length) {
      _produtos.removeAt(i);
    }
  }

  int tamanho() => _produtos.length;

  Produto? get(int i) {
    return (i >= 0 && i < _produtos.length) ? _produtos[i] : null;
  }

  void exibirLista() {
    print('--- Produtos (${_produtos.length}) ---');
    for (int i = 0; i < _produtos.length; i++) {
      print('[$i] ${_produtos[i].nome} - R\$ ${_produtos[i].preco.toStringAsFixed(2)}');
    }
  }
}

