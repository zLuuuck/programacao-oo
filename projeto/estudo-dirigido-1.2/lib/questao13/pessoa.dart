import 'carteira.dart';

class Pessoa {
  String _nome;
  // carteira pode ter valor nulo
  Carteira? _carteira;

  Pessoa(this._nome, this._carteira) {
    if (_nome.isEmpty) _nome = "Pessoa";
  }

  void exibir() {
    print("======================");
    print("Nome: $_nome");

    if (_carteira != null) {
      _carteira!.exibir();
    } else {
      print("Sem carteira");
    }

    print("======================");
  }
}