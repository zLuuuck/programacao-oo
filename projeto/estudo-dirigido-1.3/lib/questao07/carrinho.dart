import '../questao01/cliente.dart';
import '../questao05/item_carrinho.dart';

class Carrinho {
  Cliente _cliente;
  List<ItemCarrinho> _itens;
  bool _aberto;

  Carrinho(this._cliente)
      : _itens = [],
        _aberto = true;

  // getters
  Cliente get cliente => _cliente;
  List<ItemCarrinho> get itens => _itens;
  bool get aberto => _aberto;

  void adicionarItem(ItemCarrinho item) {
    if (_aberto) {
      _itens.add(item);
    }
  }

  void removerItem(int i) {
    if (i >= 0 && i < _itens.length) {
      _itens.removeAt(i);
    }
  }

  double calcularTotal() {
    double total = 0;
    for (var item in _itens) {
      total += item.calcularSubtotal();
    }
    return total;
  }

  void exibirCarrinho() {
    print("Cliente: ${_cliente.nome}");
    for (var item in _itens) {
      item.exibirItem();
    }
    print("Total: ${calcularTotal()}");
  }
}