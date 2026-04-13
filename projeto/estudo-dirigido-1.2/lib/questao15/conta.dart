class Conta {
  double _saldo;

  Conta(this._saldo) {
    if (_saldo < 0) {
      print("Saldo inválido! Definido como 0");
      _saldo = 0;
    }
  }

  void depositar(double valor) {
    if (valor <= 0) {
      print("Depósito inválido!");
      return;
    }

    _saldo += valor;
    print("Depósito de $valor realizado!");
  }

  void sacar(double valor) {
    if (valor <= 0) {
      print("Saque inválido!");
      return;
    }

    if (valor > _saldo) {
      print("Saldo insuficiente!");
      return;
    }

    _saldo -= valor;
    print("Saque de $valor realizado!");
  }

  void exibirSaldo() {
    print("Saldo atual: $_saldo");
  }
}