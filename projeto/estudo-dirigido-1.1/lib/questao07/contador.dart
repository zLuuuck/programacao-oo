class Contador {
  int valorInicial;

  Contador({this.valorInicial = 0}) {
    if (valorInicial < 0) {
      print(
        "Aviso: Valor inicial negativo detectado. O contador foi definido para 0.",
      );
      valorInicial = 0;
    }
  }

  void incrementar() {
    valorInicial++;
  }

  void decrementar() {
    if (valorInicial > 0) {
      valorInicial--;
    } else {
      print("O contador já está em 0 e não pode ser negativo.");
    }
  }

  void zerar() {
    valorInicial = 0;
  }

  void exibirValor() {
    print("Valor: $valorInicial");
  }
}
