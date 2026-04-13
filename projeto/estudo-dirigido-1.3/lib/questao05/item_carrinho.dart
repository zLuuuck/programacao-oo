import 'produto.dart';

class ItemCarrinho {
  Produto _produto;
  int _quantidade;

  ItemCarrinho(this._produto, this._quantidade) {
    if (_quantidade <= 0) _quantidade = 1;
  }

  // getters
  Produto get produto => _produto;
  int get quantidade => _quantidade;

  // setters
  set quantidade(int valor) {
    if (valor > 0) _quantidade = valor;
  }

  double calcularSubtotal() {
    return _produto.preco * _quantidade;
  }

  void exibirItem() {
    print("${_produto.nome} | Qtd: $_quantidade | Subtotal: ${calcularSubtotal()}");
  }
}