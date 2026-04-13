import './conta.dart';

class Gerente {
  void depositar(Conta conta, double valor) {
    conta.saldo += valor;
  }

  void sacar(Conta conta, double valor) {
    if (valor <= conta.saldo) {
      conta.saldo -= valor;
    }
  }
}