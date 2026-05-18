import 'bonificavel.dart';

abstract class Funcionario implements Bonificavel {
  String _nome = 'Não informado';
  double _salario = 0;

  Funcionario(String nome, double salario) {
    this.nome = nome;
    this.salario = salario;
  }

  String get nome => _nome;

  set nome(String nome) {
    if (nome.trim().isEmpty) {
      print('Nome não pode ser vazio. Mantido: $_nome');
      return;
    }
    _nome = nome;
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
  double calcularBonus();

  @override
  String toString() {
    return 'Funcionario - nome: $nome | salário: R\$ ${salario.toStringAsFixed(2)}';
  }
}
