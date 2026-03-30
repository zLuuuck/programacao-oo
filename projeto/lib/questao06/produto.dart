class Produto {
  int codigo;
  String nome;
  double precoUni;
  int quantidadeEstoque;

  Produto(this.codigo, this.nome, this.precoUni, this.quantidadeEstoque) {
    if (codigo < 0) {
      print("Código deve ser maior que 0.");
    }
    if (nome.isEmpty) {
      print("Nome não pode ser vazio.");
    }
    if (precoUni < 0) {
      print("Preço deve ser maior que 0.");
    }
    if (quantidadeEstoque < 0) {
      print("Quantidade deve ser maior que 0.");
    }
  }

  double calcularDesconto() {
    double total = precoUni * quantidadeEstoque;

    // 20 ou mais unidades = 10%
    if (quantidadeEstoque >= 20) {
      return total * 0.15;
    }

    // de 10 a 19 unidades = 10%
    if (quantidadeEstoque >= 10) {
      return total * 0.10;
    }
    // de 5 a 9 unidades = 5%
    if (quantidadeEstoque >= 5) {
      return total * 0.05;
    }
    // até 4 unidades = 0%
    return 0;
  }

  double calcularTotal() {
    double total = precoUni * quantidadeEstoque;
    return total - calcularDesconto();
  }

  void exibirResumo() {
    print("=========================================");
    print("Código: $codigo");
    print("Nome: $nome");
    print("Preço: $precoUni");
    print("Quantidade: $quantidadeEstoque");
    print("Desconto: ${calcularDesconto()}");
    print("Total: ${calcularTotal()}");
    print("=========================================\n");
  }
}
