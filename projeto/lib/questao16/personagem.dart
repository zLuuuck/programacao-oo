class Personagem {
  String nome;
  int vida;
  int ataque;

  Personagem(this.nome, this.vida, this.ataque) {
    if (nome.isEmpty) {
      print("Nome inválido! Definido como 'Personagem'");
      nome = "Personagem";
    }

    if (vida <= 0) {
      print("Vida inválida! Definida como 1");
      vida = 1;
    }

    if (ataque <= 0) {
      print("Ataque inválido! Definido como 1");
      ataque = 1;
    }
  }

  void atacar(Personagem inimigo) {
    if (!estaVivo()) {
      print("$nome não pode atacar, está morto!");
      return;
    }

    print("$nome atacou ${inimigo.nome} causando $ataque de dano!");

    inimigo.vida -= ataque;

    if (inimigo.vida < 0) {
      inimigo.vida = 0;
    }

    print("${inimigo.nome} agora tem ${inimigo.vida} de vida.\n");
  }

  bool estaVivo() {
    return vida > 0;
  }

  void exibirStatus() {
    print("$nome - Vida: $vida - Ataque: $ataque");
  }
}