abstract class Personagem {
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

  void receberDano(int dano) {
    if (dano < 0) {
      print('Dano não pode ser negativo. Ignorado.');
      return;
    }
    _hp -= dano;
    print('$nome recebeu $dano de dano. HP atual: $_hp');
    estaVivo();
  }

  bool estaVivo() {
    if (_hp <= 0) {
      _vivo = false;
      print('$_nome morreu!');
    }
    return _vivo;
  }

  void exibirStatusPersonagem();
}

abstract interface class Atacante {
  void atacar(Personagem alvo);
}

abstract interface class Magico {
  void lancarFeitico(Personagem alvo);
}

abstract interface class Flamejante {
  void soltarChama(Personagem alvo);
}


