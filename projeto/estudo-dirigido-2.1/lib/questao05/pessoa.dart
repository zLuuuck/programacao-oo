class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void exibirDados() {
    print("Nome: $nome");
    print("Idade: $idade");
  }
}