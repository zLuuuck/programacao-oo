import 'inimigo.dart';

class Goblin extends Inimigo {
  int _velocidade = 0;

  Goblin(super.nome, super.vida, super.nivel, super.recompensa, int velocidade) {
    this.velocidade = velocidade;
  }

  int get velocidade => _velocidade;

  set velocidade(int velocidade) {
    if (velocidade < 0) {
      print('Velocidade não pode ser negativa. Mantida: $_velocidade');
      return;
    }

    _velocidade = velocidade;
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Tipo: Goblin');
    print('Velocidade: $velocidade');
  }

  @override
  void exibirRecompensa() {
    print('Recompensa do Goblin: $recompensa moedas');
  }
}
