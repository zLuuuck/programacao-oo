import 'combatente.dart';
import 'magico.dart';
import 'personagem.dart';

class Mago extends Combatente implements Magico {
  int _mana = 0;

  Mago(super.nome, super.vida, super.nivel, super.forca, int mana) {
    this.mana = mana;
  }

  int get mana => _mana;

  set mana(int mana) {
    if (mana < 0) {
      print('Mana não pode ser negativa. Mantida: $_mana');
      return;
    }

    _mana = mana;
  }

  @override
  void lancarMagia(Personagem alvo) {
    if (mana < 10) {
      print('$nome não pode lançar magia porque não tem mana suficiente.');
      return;
    }

    int dano = forca + 15;
    print('$nome lança magia em ${alvo.nome} causando $dano de dano.');
    alvo.receberDano(dano);
    mana -= 10;
  }

  @override
  void atacar(Personagem alvo) {
    print('$nome ataca ${alvo.nome} causando $forca de dano.');
    alvo.receberDano(forca);
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Classe: Mago');
    print('Mana disponível: $mana');
  }
}
