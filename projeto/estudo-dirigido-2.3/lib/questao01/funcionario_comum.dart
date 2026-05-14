import 'funcionario.dart';

class FuncionarioComum extends Funcionario {
  FuncionarioComum(super.nome, super.salario);

  @override
  void exibirDados() {
    print('Funcionário comum');
    print('Nome: $nome');
    print('Salário: R\$ $salario');
  }
}
