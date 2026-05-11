import 'conta.dart';
import 'rentavel.dart';

class ContaCorrente extends ContaBancaria implements Rentavel {
  static const double taxaRendimento = 0.05;

  ContaCorrente(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;
  }
}
