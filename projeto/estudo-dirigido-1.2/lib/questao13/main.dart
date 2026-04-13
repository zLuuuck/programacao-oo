import 'pessoa.dart';
import 'carteira.dart';

void main() {
  var carteira = Carteira(100);

  Pessoa? p1 = Pessoa("João", carteira);
  Pessoa? p2 = p1;

  print("Estado inicial:\n");
  p1!.exibir();

  print("\nAlterando saldo pela variável p2...\n");
  carteira.alterarSaldo(50);

  p1.exibir();

  print("\nDefinindo p1 como null...\n");
  p1 = null;

  print("p2 ainda existe:\n");
  p2.exibir();

  print("\nDefinindo p2 como null...\n");
  p2 = null;

  print("Agora não há mais referências para o objeto.");
}