import 'conta_corrente.dart';
import 'conta_poupanca.dart';

void main() {
  ContaPoupanca poupanca = ContaPoupanca('Caio', 1000);
  ContaCorrente corrente = ContaCorrente('Chauã', 2000);

  poupanca.depositar(200);
  poupanca.aplicarRendimento();
  poupanca.exibirSaldo();

  print('');

  corrente.depositar(500);
  corrente.aplicarRendimento();
  corrente.exibirSaldo();
}
