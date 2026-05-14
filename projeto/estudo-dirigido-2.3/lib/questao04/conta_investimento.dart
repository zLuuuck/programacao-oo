import 'conta.dart';
import 'rentavel.dart';

class ContaInvestimento extends ContaBancaria implements Rentavel {
  static const double taxaRendimento = 0.08;

  ContaInvestimento(super.titular, super.saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;
  }

  String get tipoConta => 'ContaInvestimento';
}
