import 'personagem.dart';

class Inimigo extends Personagem {
  int _dmg = 1;
  int _recompensaXP = 0;
  int _recompensaOuro = 0;

  Inimigo(super.nome, super.hp, super.level, int recompensaXP, int recompensaOuro, int dmg) {
    this.recompensaXP = recompensaXP;
    this.recompensaOuro = recompensaOuro;
    this.dmg = dmg;
  }

  int get recompensaXP => _recompensaXP;
  int get recompensaOuro => _recompensaOuro;
  int get dmg => _dmg;

  set dmg(int valor) {
    if (valor < 0) {
      print('Dano não pode ser negativo. Mantido valor anterior/padrão.');
      return;
    }
    _dmg = valor;
  }

  set recompensaXP(int valor) {
    if (valor < 0) {
      print('Recompensa de XP não pode ser negativa. Mantido valor anterior/padrão.');
      return;
    }
    _recompensaXP = valor;
  }

  set recompensaOuro(int valor) {
    if (valor < 0) {
      print('Recompensa de ouro não pode ser negativa. Mantido valor anterior/padrão.');
      return;
    }
    _recompensaOuro = valor;
  }

  void atacar(Personagem alvo) {
    print('$nome ataca ${alvo.nome} causando $_dmg de dano!');
    alvo.receberDano(_dmg);
  }

  @override
  void exibirStatusPersonagem() {
    super.exibirStatusPersonagem();
    print('Classe: Inimigo');
    print('Dano: $_dmg');
    print('Recompensa de XP: $_recompensaXP');
    print('Recompensa de Ouro: $_recompensaOuro');
  }
}

class Goblin extends Inimigo {
  int _spd = 0; 

  Goblin(super.nome, super.hp, super.level, super.recompensaXP, super.recompensaOuro, super.dmg, int spd) {
    this.spd = spd;
  }

  int get spd => _spd;

  set spd(int valor) {
    if (valor < 0) {
      print('Velocidade não pode ser negativa. Mantido valor anterior/padrão.');
      return;
    }
    _spd = valor;
  }

  @override
  void exibirStatusPersonagem() {
    super.exibirStatusPersonagem();
    print('Tipo: Goblin');
    print('Velocidade: $_spd');
  }
}

class Dragao extends Inimigo {
  int _firePower = 10;  

  Dragao(super.nome, super.hp, super.level, super.recompensaXP, super.recompensaOuro, super.dmg, int firePower) {
    this.firePower = firePower;
  }

  int get firePower => _firePower;

  set firePower(int valor) {
    if (valor < 0) {
      print('Poder de fogo não pode ser negativo. Mantido valor anterior/padrão.');
      return;
    }
    _firePower = valor;
  }

  void soltarFogo(Personagem alvo) {
    print('$nome lança uma rajada de fogo em ${alvo.nome} causando $_firePower de dano!');
    alvo.receberDano(_firePower);
  }

  @override
  void atacar(Personagem alvo) {
    soltarFogo(alvo);
  }

  @override
  void exibirStatusPersonagem() {
    super.exibirStatusPersonagem();
    print('Tipo: Dragão');
    print('Poder de Fogo: $_firePower');
  }
}