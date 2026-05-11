import 'inimigo.dart';

class Goblin extends Inimigo {
  int _velocidade = 0;

  Goblin(String nome, int vida, int nivel, int recompensa, int velocidade)
    : super(nome, vida, nivel, recompensa) {
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
