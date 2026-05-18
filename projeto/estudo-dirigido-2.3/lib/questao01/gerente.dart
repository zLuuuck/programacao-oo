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
  double calcularBonus() => salario * 0.15;

  @override
  String toString() {
    return 'Gerente | Nome: $nome | Salário: R\$ ${salario.toStringAsFixed(2)} | Setor: $setor | Bônus: R\$ ${calcularBonus().toStringAsFixed(2)}';
  }
}
