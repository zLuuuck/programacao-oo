class Produto {
  final String _nome;
  final double _preco;

  Produto(this._nome, this._preco);

  void exibirDados() {
    print('Nome: $_nome');
    print('Preço: R\$ $_preco');
  }
}

class ProdutoPerecivel extends Produto {
  final String _dataValidade;

  ProdutoPerecivel(super._nome, super._preco, this._dataValidade);

  @override
  void exibirDados() {
    super.exibirDados();
    print('Data de Validade: $_dataValidade');
  }
}