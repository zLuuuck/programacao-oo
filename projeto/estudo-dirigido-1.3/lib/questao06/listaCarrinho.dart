import '../questao05/itemCarrinho.dart';

class ListaCarrinho {
  List<ItemCarrinho> _itens = [];

  void inserir(ItemCarrinho item) {
    _itens.add(item);
  }

  void remover(int i) {
    if (i >= 0 && i < _itens.length) {
      _itens.removeAt(i);
    }
  }

  int tamanho() {
    return _itens.length;
  }

  ItemCarrinho get(int i) {
    if (i >= 0 && i < _itens.length) {
      return _itens[i];
    }

    print("Índice inválido");
    return _itens[0];
  }

  void exibirLista() {
    for (var i in _itens) {
      i.exibirItem();
    }
  }
}