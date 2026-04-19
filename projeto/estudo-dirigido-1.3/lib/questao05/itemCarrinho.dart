import '../questao03/produto.dart';

class ItemCarrinho {
  Produto _produto;
  int _quantidade;

  ItemCarrinho(Produto produto, int quantidade)
      : _produto = produto,
        _quantidade = 1 {
    this.quantidade = quantidade;
  }

  Produto get produto => _produto;
  int get quantidade => _quantidade;

  set quantidade(int valor) {
    if (valor > 0) {
      _quantidade = valor;
    }
  }

  double calcularSubtotal() {
    return _produto.preco * _quantidade;
  }

  void exibirItem() {
    print("${_produto.nome} | Qtd: $_quantidade | Subtotal: ${calcularSubtotal()}");
  }
}