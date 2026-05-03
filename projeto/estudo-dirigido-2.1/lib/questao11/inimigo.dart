import 'personagem.dart';

class Inimigo extends Personagem {
  int _dmg;
  int _recompensaXP;
  int _recompensaOuro;

  Inimigo(super.nome, super.hp, super.level, int recompensaXP, int recompensaOuro, int dmg)
      : _recompensaXP = recompensaXP,
        _recompensaOuro = recompensaOuro,
        _dmg = dmg;

  int get recompensaXP => _recompensaXP;
  int get recompensaOuro => _recompensaOuro;
  int get dmg => _dmg;

  set dmg(int valor) {
    if (valor < 0) {
      print('Dano não pode ser negativo.');
      return;
    }
    _dmg = valor;
  }

  set recompensaXP(int valor) {
    if (valor < 0) {
      print('Recompensa de XP não pode ser negativa.');
      return;
    }
    _recompensaXP = valor;
  }

  set recompensaOuro(int valor) {
    if (valor < 0) {
      print('Recompensa de ouro não pode ser negativa.');
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
  int spd;

  Goblin(super.nome, super.hp, super.level, super.recompensaXP, super.recompensaOuro, super.dmg, int spd)
      : spd = spd;

  @override
  void exibirStatusPersonagem() {
    super.exibirStatusPersonagem();
    print('Tipo: Goblin');
    print('Velocidade: $spd');
  }
}

class Dragao extends Inimigo {
  int firePower;

  Dragao(super.nome, super.hp, super.level, super.recompensaXP, super.recompensaOuro, super.dmg, int firePower)
      : firePower = firePower;

  void soltarFogo(Personagem alvo) {
    print('$nome lança uma rajada de fogo em ${alvo.nome} causando $firePower de dano!');
    alvo.receberDano(firePower);
  }

  @override
  void atacar(Personagem alvo) {
    soltarFogo(alvo);
  }

  @override
  void exibirStatusPersonagem() {
    super.exibirStatusPersonagem();
    print('Tipo: Dragão');
    print('Poder de Fogo: $firePower');
  }
}