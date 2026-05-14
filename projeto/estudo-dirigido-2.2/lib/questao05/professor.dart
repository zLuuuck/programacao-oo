import 'pessoa.dart';

class Professor extends Pessoa {
  String _disciplina = 'Não informada';
  double _salario = 0;

  Professor(super.nome, super.idade, String disciplina, double salario) {
    this.disciplina = disciplina;
    this.salario = salario;
  }

  String get disciplina => _disciplina;

  set disciplina(String disciplina) {
    if (disciplina.trim().isEmpty) {
      print('Disciplina não pode ser vazia. Mantida: $_disciplina');
      return;
    }

    _disciplina = disciplina;
  }

  double get salario => _salario;

  set salario(double salario) {
    if (salario < 0) {
      print('Salário não pode ser negativo. Mantido: R\$ $_salario');
      return;
    }

    _salario = salario;
  }

  @override
  void exibirDados() {
    print('Professor');
    print('Nome: $nome');
    print('Idade: $idade');
    print('Disciplina: $disciplina');
    print('Salário: R\$ $salario');
  }
}
