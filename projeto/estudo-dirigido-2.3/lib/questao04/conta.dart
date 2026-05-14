import 'rentavel.dart';

abstract class ContaBancaria implements Rentavel {
  String _titular = 'Não informado';
  double _saldo = 0;

  ContaBancaria(String titular, double saldo) {
    this.titular = titular;
    this.saldo = saldo;
  }

  String get titular => _titular;

  set titular(String titular) {
    if (titular.trim().isEmpty) {
      print('Titular não pode ser vazio. Mantido: $_titular');
      return;
    }

    _titular = titular;
  }

  double get saldo => _saldo;

  set saldo(double saldo) {
    if (saldo < 0) {
      print('Saldo não pode ser negativo. Mantido: R\$ $_saldo');
      return;
    }

    _saldo = saldo;
  }

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      return;
    }

    print('Valor do depósito deve ser positivo.');
  }

  void sacar(double valor) {
    if (valor <= 0) {
      print('Valor do saque deve ser positivo.');
      return;
    }

    if (valor > _saldo) {
      print('Saldo insuficiente.');
      return;
    }

    _saldo -= valor;
  }

  String get tipoConta => 'ContaBancaria';

  @override
  String toString() {
    return 'ContaBancaria(titular: $titular, saldo: R\$ $saldo, tipo: $tipoConta)';
  }

  @override
  void aplicarRendimento();
}
