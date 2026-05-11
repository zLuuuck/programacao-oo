import 'pessoa.dart';

class Aluno extends Pessoa {
  String _matricula = 'Não informada';
  String _curso = 'Não informado';

  Aluno(String nome, int idade, String matricula, String curso)
    : super(nome, idade) {
    this.matricula = matricula;
    this.curso = curso;
  }

  String get matricula => _matricula;

  set matricula(String matricula) {
    if (matricula.trim().isEmpty) {
      print('Matrícula não pode ser vazia. Mantida: $_matricula');
      return;
    }

    _matricula = matricula;
  }

  String get curso => _curso;

  set curso(String curso) {
    if (curso.trim().isEmpty) {
      print('Curso não pode ser vazio. Mantido: $_curso');
      return;
    }

    _curso = curso;
  }

  @override
  void exibirDados() {
    print('Aluno');
    print('Nome: $nome');
    print('Idade: $idade');
    print('Matrícula: $matricula');
    print('Curso: $curso');
  }
}
