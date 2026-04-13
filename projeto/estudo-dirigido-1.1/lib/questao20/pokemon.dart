import 'dart:io';

class Pokemon {
  int _numero;
  String _nome;
  String _tipo;
  int _nivel;
  int _hp;

  Pokemon(this._numero, this._nome, this._tipo, this._nivel, this._hp) {
    if (_numero <= 0) {
      print("O número do seu pokemon deve ser maior que 0");
      exit(1);
    }
    if (_nome.isEmpty) {
      
    }
    if (_tipo.isEmpty) {
      _tipo = "Normal";
    }
    if (_nivel < 1 || _nivel > 100) {
      _nivel = 1;
    }
    if (_hp <= 0) {
      _hp = 1;
    }
  }

// setter e getter do numero
  set numero(numero) {
    _numero = numero;
  }

  int get numero => _numero;

// setter e getter de nome
  set nome(nome) {
    _nome = nome;
  }

  String get nome => _nome;

//setter e gett de tipo
  set tipo(tipo) {
    _tipo = tipo;
  }

  String get tipo => _tipo;

// setter e getter de nivel
  set nivel(nivel) {
    _nivel = nivel;
  }

  int get nivel => _nivel;

// setter e getter de hp
  set hp(hp) {
    _hp = hp;
  }

  int get hp => _hp;

  void exibir() {
    print("$_nome (Nv: $_nivel, _HP: $_hp, _Tipo: $_tipo)");
  }
}
