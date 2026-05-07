import './personagem.dart';

abstract class Combatente extends Personagem implements Atacante {
  int _dmg = 0;

  Combatente(String nome, int hp, int level, int dmg) : super(nome, hp, level) {
    this.dmg = dmg;
  }

  int get dmg => _dmg;

  set dmg(int valor) {
    if (valor < 0) {
      print('Dano não pode ser negativo. Mantido valor anterior/padrão.');
      return;
    }
    _dmg = valor;
  }

  @override
  void atacar(Personagem alvo);

  @override
  void exibirStatusPersonagem(){
    print('Nome: $nome');
    print('HP: $hp');
    print('Level: $level');
    print('Dano: $dmg');
  }
}

class Guerreiro extends Combatente {
  int _armorlvl = 0;

  Guerreiro(String nome, int hp, int level, int dmg, int armorlvl)
    : super(nome, hp, level, dmg) {
    this.armorlvl = armorlvl;
  }

  int get armorlvl => _armorlvl;

  set armorlvl(int valor) {
    if (valor < 0) {
      print('Nível de armadura não pode ser negativo. Mantido valor anterior/padrão.');
      return;
    }
    _armorlvl = valor;
  }

  @override
  void atacar(Personagem alvo) {
    print('$nome ataca ${alvo.nome} causando $dmg de dano!');
    alvo.receberDano(dmg);
  }

  void atqPesado(Personagem alvo) {
    int danoPesado = dmg * 2;
    print('$nome realiza um ataque pesado em ${alvo.nome} causando $danoPesado de dano!');
    alvo.receberDano(danoPesado);
  }

  @override
  void exibirStatusPersonagem() {
    super.exibirStatusPersonagem();
    print('Classe: Guerreiro');
    print('Nível de Armadura: $armorlvl');
  }
}

class Arqueiro extends Combatente {
  int _flechas = 0;

  Arqueiro(String nome, int hp, int level, int dmg, int flechas)
    : super(nome, hp, level, dmg) {
    this.flechas = flechas;
  }

  int get flechas => _flechas;

  set flechas(int valor) {
    if (valor < 0) {
      print('Número de flechas não pode ser negativo. Mantido valor anterior/padrão.');
      return;
    }
    _flechas = valor;
  }

  @override
  void atacar(Personagem alvo) {
    if (flechas > 0) {
      print('$nome atira uma flecha em ${alvo.nome} causando $dmg de dano!');
      alvo.receberDano(dmg);
      flechas--;
    } else {
      print('$nome não tem flechas suficientes para atacar!');
    }
  }

  @override
  void exibirStatusPersonagem() {
    super.exibirStatusPersonagem();
    print('Classe: Arqueiro');
    print('Flechas disponíveis: $_flechas');
  }
}

class Mago extends Combatente {
  int _mana = 0;

  Mago(String nome, int hp, int level, int dmg, int mana)
    : super(nome, hp, level, dmg) {
    this.mana = mana;
  }

  int get mana => _mana;

  set mana(int valor) {
    if (valor < 0) {
      print('Mana não pode ser negativa. Mantido valor anterior/padrão.');
      return;
    }
    _mana = valor;
  }

  void lancarFeitico(Personagem alvo) {
    if (mana >= 10) {
      print('$nome lança um feitiço em ${alvo.nome} causando ${dmg + 15} de dano!');
      alvo.receberDano(dmg+15);
      mana -= 10;
    } else {
      print('$nome não tem mana suficiente para lançar um feitiço!');
    }
  }

  @override
  void atacar(Personagem alvo) {
    lancarFeitico(alvo);
  }

  @override
  void exibirStatusPersonagem() {
    super.exibirStatusPersonagem();
    print('Classe: Mago');
    print('Mana disponível: $_mana');
  }
}

