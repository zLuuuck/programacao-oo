import 'funcionario.dart';

class Gerente extends Funcionario {
  String _setor = 'Não informado';

  Gerente(super.nome, super.salario, String setor) {
    this.setor = setor;
  }

  String get setor => _setor;

  set setor(String setor) {
    if (setor.trim().isEmpty) {
      print('Setor não pode ser vazio. Mantido: $_setor');
      return;
    }

    _setor = setor;
  }

  @override
  void exibirDados() {
    print('Gerente');
    print('Nome: $nome');
    print('Salário: R\$ $salario');
    print('Setor: $setor');
  }
}
