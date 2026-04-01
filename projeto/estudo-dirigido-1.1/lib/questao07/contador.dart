class Contador {
  int _valorInicial;

  Contador(this._valorInicial) {
    if (_valorInicial < 0) {
      print(
        "Aviso: Valor inicial negativo detectado. O contador foi definido para 0.",
      );
      _valorInicial = 0;
    }
  }

  void incrementar() {
    _valorInicial++;
  }

  void decrementar() {
    if (_valorInicial > 0) {
      _valorInicial--;
    } else {
      print("O contador já está em 0 e não pode ser negativo.");
    }
  }

  void zerar() {
    _valorInicial = 0;
  }

  void exibirValor() {
    print("Valor: $_valorInicial");
  }

  set valor(int valor) {
    if (_valorInicial < 0) {
      print(
        "Aviso: Valor inicial negativo detectado. O contador foi definido para 0.",
      );
      _valorInicial = 0;
    }
    _valorInicial = valor;
  }

  int get valor => _valorInicial;
}
