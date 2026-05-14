import 'conta.dart';
import 'rentavel.dart';

class ContaCorrente extends ContaBancaria implements Rentavel {
  static const double taxaRendimento = 0.05;

  ContaCorrente(super.titular, super.saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;
  }

  String get tipoConta => 'ContaCorrente';

}
