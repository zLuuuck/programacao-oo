import 'conta.dart';
import 'usuario.dart';

void main() {
  var conta = Conta(1000);

  // dois usuários usando a MESMA conta
  var u1 = Usuario("João", conta);
  var u2 = Usuario("Maria", conta);

  print("=== ESTADO INICIAL ===\n");
  u1.verSaldo();
  u2.verSaldo();

  print("=== OPERAÇÕES ===\n");

  u1.depositar(500);
  u2.sacar(300);

  print("\n=== ESTADO FINAL ===\n");
  u1.verSaldo();
  u2.verSaldo();
}