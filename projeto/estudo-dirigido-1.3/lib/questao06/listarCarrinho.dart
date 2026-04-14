import '../questao05/item_carrinho.dart';

class ListaCarrinho {
  final List<ItemCarrinho> _itens = [];

  void inserir(ItemCarrinho item) => _itens.add(item);

  void remover(int indice) {
    if (indice >= 0 && indice < _itens.length) {
      _itens.removeAt(indice);
    } else {
      print("Índice inválido!");
    }
  }

  int tamanho() => _itens.length;

  ItemCarrinho? get(int indice) {
    if (indice >= 0 && indice < _itens.length) {
      return _itens[indice];
    } else {
      print("Índice inválido!");
      return null;
    }
  } 

  void exibirLista() {
    print('--- Itens do Carrinho (${_itens.length}) ---');
    for (int i = 0; i < _itens.length; i++) {
      final item = _itens[i];
      print('[$i] ${item.produto.nome} x ${item.quantidade}');
    }
  }
}
