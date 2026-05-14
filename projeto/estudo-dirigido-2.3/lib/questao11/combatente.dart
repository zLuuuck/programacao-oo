import 'atacavel.dart';
import 'personagem.dart';

abstract class Combatente extends Personagem implements Atacavel {
  int _forca = 0;

  Combatente(super.nome, super.vida, super.nivel, int forca) {
    this.forca = forca;
  }

  int get forca => _forca;

  set forca(int valor) {
    if (valor < 0) {
      print('Força não pode ser negativa. Mantido valor anterior/padrão.');
      return;
    }
    _forca = valor;
  }

  @override
  void atacar(Personagem alvo);

  @override
  void exibirStatus() {
    print('Nome: $nome');
    print('Vida: $vida');
    print('Nível: $nivel');
    print('Força: $forca');
  }
}
