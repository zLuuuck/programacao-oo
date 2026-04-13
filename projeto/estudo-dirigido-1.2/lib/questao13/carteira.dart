class Carteira {
  double _saldo;

  Carteira(this._saldo) {
    if (_saldo < 0) {
      print("Saldo inválido! Definido como 0");
      _saldo = 0;
    }
  }

  void alterarSaldo(double valor) {
    _saldo = valor;
  }

  void exibir() {
    print("Saldo: $_saldo");
  }
}