class Conta {
  String _numero;
  String _titular;
  double _saldo;

  // construtor conta bancária (saldo 0)
  Conta.bancaria(String numero, String titular)
      : _numero = numero,
        _titular = titular,
        _saldo = 0 {
    if (_numero.isEmpty) {
      print("Número inválido! Definido como '000'");
      _numero = "000";
    }

    if (_titular.isEmpty) {
      print("Titular inválido! Definido como 'Cliente'");
      _titular = "Cliente";
    }
  }

  // construtor conta VIP
  Conta.vip(String numero, String titular, double saldoInicial)
      : _numero = numero,
        _titular = titular,
        _saldo = saldoInicial {
    if (_numero.isEmpty) {
      print("Número inválido! Definido como '000'");
      _numero = "000";
    }

    if (_titular.isEmpty) {
      print("Titular inválido! Definido como 'Cliente'");
      _titular = "Cliente";
    }

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

  void exibirResumo() {
    print("======================");
    print("Conta: $_numero");
    print("Titular: $_titular");
    print("Saldo: $_saldo");
    print("======================");
  }
}