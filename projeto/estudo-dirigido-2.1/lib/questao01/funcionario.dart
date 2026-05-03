class Funcionario {
  final String _nome;
  final double _salario;

  Funcionario(this._nome, this._salario);

  void exibirdados() {
    print('Nome: $_nome');
    print('Salário: R\$ $_salario');
  }
}

class Gerente extends Funcionario {

  final String _setor;

  Gerente(super._nome, super._salario, this._setor);

  @override
  void exibirdados() {
    super.exibirdados();
    print('Setor: $_setor');
  }
}