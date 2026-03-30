class Produto {
  int codigo;
  String nome;
  double preco;

  Produto(this.codigo, this.nome, this.preco) {
    if (codigo <= 0) {
      print("Código inválido! Definido como 1");
      codigo = 1;
    }

    if (nome.isEmpty) {
      print("Nome inválido! Definido como 'Produto'");
      nome = "Produto";
    }

    if (preco <= 0) {
      print("Preço inválido! Definido como 1.0");
      preco = 1.0;
    }
  }
}