class Aluno {
  String nome;
  double _nota1;
  double _nota2;

  Aluno(this.nome, this._nota1, this._nota2) {
    if (nome.isEmpty) {
      print("Nome não pode ser vazio!");
    }
    if (_nota1 < 0 || _nota1 > 10.0) {
      print("Nota 1 deve estar entre 0-10");
    }
    if (_nota2 < 0 || _nota2 > 10.0) {
      print("Nota 1 deve estar entre 0-10");
    }
  }

  double calcularMedia() {
    return ((_nota1 + _nota2) / 2);
  }

  String estaAprovado() {
    if (calcularMedia() >= 6.0) {
      return ("Aprovado");
    } else if (calcularMedia() >= 4.0 && calcularMedia() < 6.0) {
      return ("Recuperação");
    } else {
      return ("Reprovado");
    }
  }

  void exibirBoletim() {
    print("=================");
    print("Nome: $nome");
    print("Nota 1: $_nota1");
    print("Nota 2: $_nota2");
    print("Media: ${calcularMedia()}");
    print("Situação: ${estaAprovado()} ");
  }
}
