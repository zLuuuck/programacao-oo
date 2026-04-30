class Funcionario {
  String _nome;
  double _salario;

  Funcionario(this._nome, this._salario);

  void exibirdados() {
    print('Nome: $_nome');
    print('Salário: R\$ $_salario');
  }
}

class Gerente extends Funcionario {

  String _setor;

  Gerente(String _nome, double _salario, this._setor) : super(_nome, _salario);

  @override
  void exibirdados() {
    super.exibirdados();
    print('Setor: $_setor');
  }
}