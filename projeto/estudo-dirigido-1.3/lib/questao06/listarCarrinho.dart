class ListaCarrinho {
  final List<ItemCarrinho> _itens = [];

  void inserir(ItemCarrinho item) => _itens.add(item);

  void remover(int i) {
    if (i >= 0 && i < _itens.length) {
      _itens.removeAt(i);
    }
  }

  int tamanho() => _itens.length;

  ItemCarrinho? get(int i) {
    return (i >= 0 && i < _itens.length) ? _itens[i] : null;
  }

  void exibirLista() {
    print('--- Itens do Carrinho (${_itens.length}) ---');
    for (int i = 0; i < _itens.length; i++) {
      final item = _itens[i];
      print('[$i] ${item.produto.nome} x ${item.quantidade}');
    }
  }
}