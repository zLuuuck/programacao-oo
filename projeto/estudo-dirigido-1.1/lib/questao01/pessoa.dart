import 'dart:io';

class Pessoa {
  String _nome;
  int _idade;

  Pessoa(this._nome, this._idade) {
    if (_nome.isEmpty) {
      print("Nome não pode ser vazio!");
      exit(1);
    }
    if (_idade < 0) {
      print("Idade não pode ser negativa!");
      exit(1);
    }
  }

  void exibirDados() {
    print("=============================");
    print("Nome:  $_nome");
    print("Idade: $_idade");
    print("=============================");
  }
}