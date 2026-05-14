import 'combatente.dart';
import 'personagem.dart';

class Arqueiro extends Combatente {
  int _flechas = 0;

  Arqueiro(super.nome, super.vida, super.nivel, super.forca, int flechas) {
    this.flechas = flechas;
  }

  int get flechas => _flechas;

  set flechas(int flechas) {
    if (flechas < 0) {
      print('Flechas não pode ser negativo. Mantido: $_flechas');
      return;
    }

    _flechas = flechas;
  }

  @override
  void atacar(Personagem alvo) {
    if (flechas <= 0) {
      print('$nome não pode atacar porque não tem flechas.');
      return;
    }

    print('$nome atira uma flecha em ${alvo.nome} causando $forca de dano.');
    alvo.receberDano(forca);
    flechas--;
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Classe: Arqueiro');
    print('Flechas disponíveis: $flechas');
  }
}
