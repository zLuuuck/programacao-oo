class Pessoa {
  String _nome;
  int _idade;

  Pessoa(this._nome, this._idade) {
    if (_nome.isEmpty) {
      print("Nome não pode ser vazio!");
    }
    if (_idade < 0 || _idade.isNaN) {
      print("Idade não pode ser negativa!");
    }
  }

  void exibirDados() {
    print("=============================");
    print("Nome:  $_nome");
    print("Idade: $_idade");
    print("=============================");
  }
}
