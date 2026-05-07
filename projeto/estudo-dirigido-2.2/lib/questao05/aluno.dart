import 'pessoa.dart';

class Aluno extends Pessoa {
  String matricula;
  String curso;

  Aluno(String nome, int idade, this.matricula, this.curso)
      : super(nome, idade);

  @override
  void exibirDados() {
    super.exibirDados();
    print("Matrícula: $matricula");
    print("Curso: $curso");
  }
}