class Produto {
  String _nome;
  double _preco;
  int _estoque;
  bool _ativo;

  Produto(String nome, double preco, int estoque, bool ativo)
      : _nome = '',
        _preco = 0,
        _estoque = 0,
        _ativo = false {
    this.nome = nome;
    this.preco = preco;
    this.estoque = estoque;
    this.ativo = ativo;
  }

  String get nome => _nome;
  double get preco => _preco;
  int get estoque => _estoque;
  bool get ativo => _ativo;

  set nome(String valor) {
    if (valor.trim().isEmpty) {
      print("Nome inválido");
    } else {
      _nome = valor;
    }
  }

  set preco(double valor) {
    if (valor < 0) {
      print("Preço inválido");
    } else {
      _preco = valor;
    }
  }

  set estoque(int valor) {
    if (valor < 0) {
      print("Estoque inválido");
    } else {
      _estoque = valor;
    }
  }

  set ativo(bool valor) {
    _ativo = valor;
  }

  void ativar() {
    _ativo = true;
  }

  void desativar() {
    _ativo = false;
  }

  void reporEstoque(int q) {
    if (q > 0) {
      _estoque += q;
    }
  }

  void retirarEstoque(int q) {
    if (q <= _estoque) {
      _estoque -= q;
    }
  }

  void exibirProduto() {
    print("Produto: $_nome | Preço: $_preco | Estoque: $_estoque | Ativo: $_ativo");
  }
}