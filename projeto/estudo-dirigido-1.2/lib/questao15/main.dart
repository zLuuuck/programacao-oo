import 'conta.dart';
import 'usuario.dart';

void main() {
  var conta = Conta(1000);

  // dois usuários usando a MESMA conta
  var u1 = Usuario("Caio", conta);
  var u2 = Usuario("Lucas", conta);

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

// a)Qual é a vantagem de usar construtores nomeados nesse caso?
// Porque os dois usuários compartilham a mesma instância de Conta.

// b)O que muda no estado inicial de cada objeto conforme o construtor utilizado?
// Cada usuário teria uma conta independente, com saldo separado.

// c)Em vez de criar métodos separados para configurar o cargo depois, por que pode ser melhor definir isso já no construtor?
// Sim, é útil para representar situações como contas conjuntas ou sistemas compartilhados.