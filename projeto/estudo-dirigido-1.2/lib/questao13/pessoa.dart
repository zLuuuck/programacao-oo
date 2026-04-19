import 'carteira.dart';

class Pessoa {
  String _nome;
  Carteira? _carteira;   // pode ser nula

  // Construtor com validação
  Pessoa(String nome, Carteira? carteira)
      : _nome = '',
        _carteira = carteira {
    this.nome = nome;
    // _carteira já foi atribuído na lista inicializadora; 
    // não precisamos validar carteira, pois pode ser null.
  }

  // Getters
  String get nome => _nome;
  Carteira? get carteira => _carteira;

  // Setters
  set nome(String valor) {
    if (valor.trim().isEmpty) {
      print("Nome inválido! Definido como 'Pessoa'");
      _nome = 'Pessoa';
    } else {
      _nome = valor;
    }
  }

  set carteira(Carteira? valor) {
    _carteira = valor;   // sem validação extra (aceita null)
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