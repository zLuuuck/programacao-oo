import 'cliente.dart';

void main() {
  var c1 = Cliente("Lucas", "lucas@gmail.com", 500, true);
  var c2 = Cliente("Caio", "caio@gmail.com", 300, true);

  c1.adicionarSaldo(100);
  c2.debitarSaldo(50);

  c1.exibirCliente();
  c2.exibirCliente();
}