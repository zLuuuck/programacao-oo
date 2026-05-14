import 'flamejante.dart';
import 'inimigo.dart';
import 'personagem.dart';

class Dragao extends Inimigo implements Flamejante {
  int _poderDeFogo = 10;

  Dragao(super.nome, super.vida, super.nivel, super.recompensa, int poderDeFogo) {
    this.poderDeFogo = poderDeFogo;
  }

  int get poderDeFogo => _poderDeFogo;

  set poderDeFogo(int poderDeFogo) {
    if (poderDeFogo < 0) {
      print('Poder de fogo não pode ser negativo. Mantido: $_poderDeFogo');
      return;
    }

    _poderDeFogo = poderDeFogo;
  }

  @override
  void soltarFogo(Personagem alvo) {
    print('$nome solta fogo em ${alvo.nome} causando $poderDeFogo de dano.');
    alvo.receberDano(poderDeFogo);
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Tipo: Dragão');
    print('Poder de fogo: $poderDeFogo');
  }

  @override
  void exibirRecompensa() {
    print('Recompensa do Dragão: $recompensa moedas');
  }
}
