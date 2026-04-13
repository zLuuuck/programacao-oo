import './conta.dart';

class Gerente {
  void depositar(Conta conta, double valor) {
    conta.saldo += valor;
    print("Depósito de $valor realizado");
  }

  void sacar(Conta conta, double valor) {
    if (valor <= conta.saldo) {
      conta.saldo -= valor;
      print("Saque de $valor realizado");
    } else {
      print("Saldo insuficiente");
    }
  }
}
