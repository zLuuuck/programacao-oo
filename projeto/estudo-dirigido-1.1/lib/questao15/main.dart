import 'cofrinho.dart';

void main() {
  var cofre = Cofrinho(0);

  cofre.depositar(600.00);
  cofre.depositar(60.00);
  cofre.depositar(6.00);

  cofre.exibirSaldo();
  cofre.quebrar();
  cofre.exibirSaldo();
}