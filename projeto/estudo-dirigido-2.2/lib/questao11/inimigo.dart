import 'personagem.dart';

abstract class Inimigo extends Personagem {
  int _recompensa = 0;

  Inimigo(super.nome, super.vida, super.nivel, int recompensa) {
    this.recompensa = recompensa;
  }

  int get recompensa => _recompensa;

  set recompensa(int valor) {
    if (valor < 0) {
      print('Recompensa não pode ser negativa. Mantido valor anterior/padrão.');
      return;
    }
    _recompensa = valor;
  }

  void exibirRecompensa();

  @override
  void exibirStatus() {
    print('Nome: $nome');
    print('Vida: $vida');
    print('Nível: $nivel');
    print('Classe: Inimigo');
  }
}
