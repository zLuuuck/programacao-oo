class Conta {
  String _titular;
  double _saldo;

  Conta(String titular, double saldo)
      : _titular = '',
        _saldo = 0 {
    this.titular = titular;
    this.saldo = saldo;
  }

  String get titular => _titular;
  double get saldo => _saldo;

  set titular(String valor) {
    if (valor.trim().isEmpty) {
      print("Titular inválido! Definido como 'Titular'");
      _titular = 'Titular';
    } else {
      _titular = valor;
    }
  }

  set saldo(double valor) {
    if (valor < 0) {
      print("Saldo inválido! Definido como 0");
      _saldo = 0;
    } else {
      _saldo = valor;
    }
  }

  void exibirSaldo() {
    print("Titular: $_titular | Saldo: $_saldo");
  }
}