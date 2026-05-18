import 'funcionario.dart';

class FuncionarioComum extends Funcionario {
  FuncionarioComum(super.nome, super.salario);

  @override
  double calcularBonus() => salario * 0.05;

  @override
  String toString() {
    return 'Funcionário Comum | Nome: $nome | Salário: R\$ ${salario.toStringAsFixed(2)} | Bônus: R\$ ${calcularBonus().toStringAsFixed(2)}';
  }
}
