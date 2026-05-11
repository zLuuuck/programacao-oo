import 'combatente.dart';
import 'personagem.dart';

class Guerreiro extends Combatente {
  int _armadura = 0;

  Guerreiro(String nome, int vida, int nivel, int forca, int armadura)
    : super(nome, vida, nivel, forca) {
    this.armadura = armadura;
  }

  int get armadura => _armadura;

  set armadura(int armadura) {
    if (armadura < 0) {
      print('Armadura não pode ser negativa. Mantida: $_armadura');
      return;
    }

    _armadura = armadura;
  }

  @override
  void atacar(Personagem alvo) {
    print('$nome ataca ${alvo.nome} causando $forca de dano.');
    alvo.receberDano(forca);
  }

  void ataquePesado(Personagem alvo) {
    int danoPesado = forca * 2;
    print(
      '$nome realiza um ataque pesado em ${alvo.nome} causando $danoPesado de dano.',
    );
    alvo.receberDano(danoPesado);
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Classe: Guerreiro');
    print('Armadura: $armadura');
  }
}
