class Produto {
  String _nome;
  double _preco;

  Produto(this._nome, this._preco);

  void exibirDados() {
    print('Nome: $_nome');
    print('Preço: R\$ $_preco');
  }
}

class ProdutoPerecivel extends Produto {
  String _dataValidade;

  ProdutoPerecivel(String _nome, double _preco, this._dataValidade) : super(_nome, _preco);

  @override
  void exibirDados() {
    super.exibirDados();
    print('Data de Validade: $_dataValidade');
  }
}