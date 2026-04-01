import 'dart:io';
class Produto {
  int _codigo;
  String nome;
  double _precoUni;
  int _quantidadeEstoque;

  Produto(this._codigo, this.nome, this._precoUni, this._quantidadeEstoque) {
    if (_codigo < 0) {
      print("Código deve ser maior que 0.");
    }
    if (nome.isEmpty) {
      print("Nome não pode ser vazio.");
    }
    if (_precoUni < 0) {
      print("Preço deve ser maior que 0.");
    }
    if (_quantidadeEstoque < 0) {
      print("Quantidade deve ser maior que 0.");
    }
  }

//setters produto

//Setter e getter do código
  set codigoProduto(int codigo){
    if (codigo.isNaN || codigo <= 0){
      exit(1);
    }

    _codigo = codigo;
  }

  int get codigo => _codigo;


//Setter e Getter do preço unitário

  set precoUnitario(double preco){
    if (preco.isNaN || preco <= 0){
      exit(2);
    }

    _precoUni = preco;
  }

  double get precoUnitario => _precoUni;


//Setter e getter da quantidade em estoque

  set qtdeEstoque(int quantidade){
    if (quantidade.isNaN || quantidade <= 0){
      exit(2);
    }

    _quantidadeEstoque = quantidade;
  }

  int get qtdeEstoque => _quantidadeEstoque;


  double calcularDesconto() {
    double total = _precoUni * _quantidadeEstoque;

    // 20 ou mais unidades = 10%
    if (_quantidadeEstoque >= 20) {
      return total * 0.15;
    }

    // de 10 a 19 unidades = 10%
    if (_quantidadeEstoque >= 10) {
      return total * 0.10;
    }
    // de 5 a 9 unidades = 5%
    if (_quantidadeEstoque >= 5) {
      return total * 0.05;
    }
    // até 4 unidades = 0%
    return 0;
  }

  double calcularTotal() {
    double total = _precoUni * _quantidadeEstoque;
    return total - calcularDesconto();
  }

  void exibirResumo() {
    print("=========================================");
    print("Código: $_codigo");
    print("Nome: $nome");
    print("Preço: $_precoUni");
    print("Quantidade: $_quantidadeEstoque");
    print("Desconto: ${calcularDesconto()}");
    print("Total: ${calcularTotal()}");
    print("=========================================\n");
  }
}
