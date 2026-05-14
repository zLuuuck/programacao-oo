import 'pessoa.dart';

class Aluno extends Pessoa {
  String matricula;
  String curso;

  Aluno(super.nome, super.idade, this.matricula, this.curso);

  @override
  void exibirDados() {
    super.exibirDados();
    print("Matrícula: $matricula");
    print("Curso: $curso");
  }
}