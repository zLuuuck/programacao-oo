import 'cliente.dart';

void main() {
  var c1 = Cliente("Lucas", "lucas@gmail.com", 100, true);
  var c2 = Cliente("Caio", "caio@gmail.com", 50, false);

  // usando setters
  c1.nome = "Lucas Toterol";
  c2.email = "caio@gmail.com";

  // operações
  c1.adicionarSaldo(50);
  c2.debitarSaldo(20);

  // exibição final
  c1.exibirCliente();
  c2.exibirCliente();
}