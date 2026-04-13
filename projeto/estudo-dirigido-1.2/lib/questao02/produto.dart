class Produto {
  String _nome;
  double _preco;
  int _estoque;

  Produto(this._nome, this._preco, this._estoque);

  void repor(int qtd) {
    _estoque += qtd;
  }

  void vender(int qtd) {
    if (qtd <= _estoque) {
      _estoque -= qtd;
    } else {
      print("Estoque insuficiente");
    }
  }

  void exibirFicha() {
    print("Nome: $_nome | Preço: $_preco | Estoque: $_estoque");
  }
}