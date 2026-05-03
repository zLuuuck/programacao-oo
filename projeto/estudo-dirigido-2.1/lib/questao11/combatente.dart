import 'personagem.dart';

class Combatente extends Personagem {
  int _dmg;

  Combatente(String nome, int hp, int level, int dmg)
      : _dmg = dmg,
        super(nome, hp, level);

  int get dmg => _dmg;

  set dmg(int valor) {
    if (valor < 0) {
      print('Dano não pode ser negativo.');
      return;
    }
    _dmg = valor;
  }

  void atacar(Personagem alvo) {
    print('$nome ataca ${alvo.nome} causando $_dmg de dano!');
    alvo.receberDano(_dmg);
  }

  @override
  void exibirStatusPersonagem() {
    super.exibirStatusPersonagem();
    print('Força: $_dmg');
  }
}

class Guerreiro extends Combatente {
  int _armorlvl;

Guerreiro(String nome, int hp, int level, int dmg, int armorlvl)
    : _armorlvl = armorlvl,        
      super(nome, hp, level, dmg);  

  int get armorlvl => _armorlvl; 

  set armorlvl(int valor) {
    if (valor < 0) {
      print('Nível de armadura não pode ser negativo.');
      return;
    }
    _armorlvl = valor;
  }

  void atqPesado(Personagem alvo) {
    int danoPesado = (dmg * 2);
    print('$nome realiza um ataque pesado em ${alvo.nome} causando $danoPesado de dano!');
    alvo.receberDano(danoPesado);
  }

  @override
  void exibirStatusPersonagem() {
    super.exibirStatusPersonagem();
    print('Classe: Guerreiro');
    print('Habilidade Especial: Ataque Pesado (Dano x2)');
    print('Nível de Armadura: $_armorlvl');
  }
}

class Arqueiro extends Combatente {
  int _flechas;

  Arqueiro(String nome, int hp, int level, int dmg, int flechas)
      : _flechas = flechas,
        super(nome, hp, level, dmg);

  int get flechas => _flechas;

  set flechas(int valor) {
    if (valor < 0) {
      print('Número de flechas não pode ser negativo.');
      return;
    }
    _flechas = valor;
  }

  @override
  void atacar(Personagem alvo) {
    if (_flechas <= 0) {
      print('$nome não pode atacar sem flechas!');
      return;
    }
    _flechas--;
    print('$nome atira uma flecha em ${alvo.nome} causando $dmg de dano!');
    alvo.receberDano(dmg);
  }

  @override
  void exibirStatusPersonagem() {
    super.exibirStatusPersonagem();
    print('Classe: Arqueiro');
    print('Flechas restantes: $_flechas');
  }
}

class Mago extends Combatente {
  int _mana;

  Mago(String nome, int hp, int level, int dmg, int mana)
      : _mana = mana,
        super(nome, hp, level, dmg);

  int get mana => _mana;

  set mana(int valor) {
    if (valor < 0) {
      print('Mana não pode ser negativa.');
      return;
    }
    _mana = valor;
  }

  void lancarFeitico(Personagem alvo) {
    if (_mana < 10) {
      print('$nome não tem mana suficiente para lançar um feitiço!');
      return;
    }
    _mana -= 10;
    int danoFeitico = (dmg + 15);
    print('$nome lança um feitiço em ${alvo.nome} causando $danoFeitico de dano!');
    alvo.receberDano(danoFeitico);
  }

  @override
  void exibirStatusPersonagem() {
    super.exibirStatusPersonagem();
    print('Classe: Mago');
    print('Habilidade Especial: Lançar Feitiço (Dano +15, Custo 10 Mana)');
    print('Mana: $_mana');
  }
}