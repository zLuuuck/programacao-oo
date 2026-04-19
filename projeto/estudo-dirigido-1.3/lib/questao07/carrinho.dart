import '../questao01/cliente.dart';
import '../questao06/listaCarrinho.dart';
import '../questao05/itemCarrinho.dart';

class Carrinho {
  Cliente _cliente;
  ListaCarrinho _itens;
  bool _aberto;

  Carrinho(Cliente cliente)
      : _cliente = cliente,
        _itens = ListaCarrinho(),
        _aberto = true;

  void adicionarItem(ItemCarrinho item) {
    _itens.inserir(item);
  }

  void removerItem(int i) {
    _itens.remover(i);
  }

  double calcularTotal() {
    double total = 0;

    for (int i = 0; i < _itens.tamanho(); i++) {
      total += _itens.get(i).calcularSubtotal();
    }

    return total;
  }

  void exibirCarrinho() {
    print("Cliente: ${_cliente.nome}");
    _itens.exibirLista();
    print("Total: ${calcularTotal()}");
  }
}