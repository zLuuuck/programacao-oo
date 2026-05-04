class Personagem {
  String _nome = 'Desconhecido';   
  int _hp = 1;
  int _level = 1;
  bool _vivo = true;

  Personagem(String nome, int hp, int level) {
    this.nome = nome;   
    this.hp = hp;
    this.level = level;
  }

  String get nome => _nome;
  int get hp => _hp;
  int get level => _level;
  bool get vivo => _vivo;

  set nome(String valor) {
    if (valor.trim().isEmpty) {
      print('O nome não pode ser vazio. Mantido padrão "Desconhecido".');
      return;
    }
    _nome = valor;
  }

  set hp(int valor) {
    if (valor < 0) {
      print('HP não pode ser negativo. Mantido valor anterior/padrão.');
      return;
    }
    _hp = valor;
  }

  set level(int valor) {
    if (valor < 1) {
      print('Level mínimo é 1. Mantido valor anterior/padrão.');
      return;
    }
    _level = valor;
  }

  bool estaVivo() {
    if (_hp <= 0) {
      _vivo = false;
      print('$_nome morreu!');
    }
    return _vivo;
  }

  int receberDano(int dano) {
    if (dano < 0) {
      print('Dano inválido.');
      return _hp;
    }

    _hp -= dano;
    if (_hp < 0) {
      _hp = 0;
    }

    estaVivo();
    return _hp;
  }

  void exibirStatusPersonagem() {
    print('Nome: $_nome');
    print('HP: $_hp');
    print('Level: $_level');
    print('Vivo: $_vivo');
  }
}