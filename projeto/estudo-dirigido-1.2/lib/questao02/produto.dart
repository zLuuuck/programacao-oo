class Produto {
  String _nome;
  double _preco;
  int _estoque;

  Produto(this._nome, this._preco, this._estoque) {
    _validar();
  }

  // Método privado de validação
  void _validar() {
    if (_nome.trim().isEmpty) {
      print("O nome não pode ser vazio.");
    }
    if (_preco < 0) {
      print("O preço não pode ser negativo.");
    }
    if (_estoque < 0) {
      print("O estoque não pode ser negativo.");
    }
  }

  // Getters
  String get nome => _nome;
  double get preco => _preco;
  int get estoque => _estoque;

  // Setters
  set nome(String valor) {
    String novoNome = valor;
    if (novoNome.trim().isEmpty) {
      print("O nome não pode ser vazio.");
    }
    _nome = novoNome;
  }

  set preco(double valor) {
    if (valor < 0) {
      print("O preço não pode ser negativo.");
    }
    _preco = valor;
  }

  set estoque(int valor) {
    if (valor < 0) {
      print("O estoque não pode ser negativo.");
    }
    _estoque = valor;
  }

  void repor(int qtd) {
    if (qtd < 0) {
      print("Quantidade para reposição deve ser positiva.");
      return;
    }
    _estoque += qtd;
  }

  void vender(int qtd) {
    if (qtd <= 0) {
      print("Quantidade para venda deve ser positiva.");
      return;
    }
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