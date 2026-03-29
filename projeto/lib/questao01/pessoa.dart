class Pessoa {

  String nome;
  int idade;

  Pessoa(this.nome, this.idade){
    if (nome.isEmpty){
      print("Nome não pode ser vazio!");
    }
    if (idade < 0 || idade.isNaN){
      print("Idade não pode ser negativa!");
    }
  }

  void exibirDados(){
    print("=============================");
    print("Nome:  $nome");
    print("Idade: $idade");
    print("=============================");
  }

}