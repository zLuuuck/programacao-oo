import 'conta.dart';
import 'rentavel.dart';

class ContaPoupanca extends ContaBancaria implements Rentavel {
  static const double taxaRendimento = 0.01;

  ContaPoupanca(super.titular, super.saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;
  }
}
