class Lampada {
  bool ligada;
  int quantidadeLigacoes;
  bool queimada;

  Lampada({
    this.ligada = false,
    this.quantidadeLigacoes = 0,
    this.queimada = false,
  });

  void ligar() {
    if (queimada) {
      print("Lâmpada queimada!");
      return;
    }

    if (ligada) {
      print("Lampada já está ligada!");
    } else {
      ligada = true;
      quantidadeLigacoes++;
    }

    if (quantidadeLigacoes >= 5) {
      queimada = true;
      ligada = false;
      print("A lâmpada queimou!");
    }
  }

  void desligar() {
    if (!queimada) {
      ligada = false;
    } else {
      print("A lampada já esta desligada!");
    }
  }

  void exibirEstado() {
    print("=================");
    print("status:");
    if (queimada) {
      print("Queimada");
    } else if (ligada) {
      print("Ligada");
    } else {
      print("Desligada");
    }
    print("=================");
  }
}
