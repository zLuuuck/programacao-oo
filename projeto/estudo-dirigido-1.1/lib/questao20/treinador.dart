import 'pokemon.dart';

class Treinador {
  String nome;
  Pokemon p1;
  Pokemon p2;
  Pokemon p3;

  Treinador(this.nome, this.p1, this.p2, this.p3) {
    if (nome.isEmpty) nome = "Treinador";
  }

  int calcularPoderTotal() {
    return p1.nivel + p2.nivel + p3.nivel;
  }

  void pokemonMaisForte() {
    Pokemon maisForte = p1;

    if (p2.nivel > maisForte.nivel) {
      maisForte = p2;
    }
    if (p3.nivel > maisForte.nivel) {
      maisForte = p3;
    }

    print("Mais forte:");
    maisForte.exibir();
  }

  void exibirTime() {
    print("Treinador: $nome");
    p1.exibir();
    p2.exibir();
    p3.exibir();
    print("Poder total: ${calcularPoderTotal()}");
  }
}
