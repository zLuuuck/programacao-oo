import 'apresentavel.dart';

abstract class Pessoa implements Apresentavel {
  String _nome = 'Não informado';
  int _idade = 0;

  Pessoa(String nome, int idade) {
    this.nome = nome;
    this.idade = idade;
  }

  String get nome => _nome;

  set nome(String nome) {
    if (nome.trim().isEmpty) {
      print('Nome não pode ser vazio. Mantido: $_nome');
      return;
    }
    _nome = nome;
  }

  int get idade => _idade;

  set idade(int idade) {
    if (idade < 0) {
      print('Idade não pode ser negativa. Mantida: $_idade');
      return;
    }
    _idade = idade;
  }

  @override
  void exibirDados();
}
