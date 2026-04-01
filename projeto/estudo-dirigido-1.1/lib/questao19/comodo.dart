class Comodo {
  String nome;
  double tamanho;

  Comodo(this.nome, this.tamanho) {
    if (nome.isEmpty) nome = "Cômodo";
    if (tamanho <= 0) tamanho = 1;
  }

  void exibir() {
    print("$nome - $tamanho m²");
  }
}