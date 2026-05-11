class Produto {
  String _nome = 'Produto sem nome';
  double _preco = 0;

  Produto(String nome, double preco) {
    this.nome = nome;
    this.preco = preco;
  }

  String get nome => _nome;

  set nome(String nome) {
    if (nome.trim().isEmpty) {
      print('Nome do produto não pode ser vazio. Mantido: $_nome');
      return;
    }

    _nome = nome;
  }

  double get preco => _preco;

  set preco(double preco) {
    if (preco < 0) {
      print('Preço não pode ser negativo. Mantido: R\$ $_preco');
      return;
    }

    _preco = preco;
  }
}
