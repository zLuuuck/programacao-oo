class Produto {
  String _nome;
  double _preco;
  int _estoque;
  bool _ativo;

  Produto(this._nome, this._preco, this._estoque, this._ativo) {
    if (_nome.isEmpty) {
      _nome = "Produto";
    }
    if (_preco < 0) {
      _preco = 0;
    }
    if (_estoque < 0) {
      _estoque = 0;
    }
  }

  // getters
  String get nome => _nome;
  double get preco => _preco;
  int get estoque => _estoque;
  bool get ativo => _ativo;

  // setters
  set nome(String valor) {
    if (valor.isNotEmpty) {
      _nome = valor;
    }
  }

  set preco(double valor) {
    if (valor >= 0) {
      _preco = valor;
    }
  }

  set estoque(int valor) {
    if (valor >= 0){
      _estoque = valor;
    } 
  }

  set ativo(bool valor) {
    _ativo = valor;
  }

  void ativar() => _ativo = true;
  void desativar() => _ativo = false;

  void reporEstoque(int qtd) {
    if (qtd > 0) _estoque += qtd;
  }

  void retirarEstoque(int qtd) {
    if (qtd > 0 && qtd <= _estoque) _estoque -= qtd;
  }

  void exibirProduto() {
    print("Produto: $_nome | Preço: $_preco | Estoque: $_estoque | Ativo: $_ativo");
  }
}