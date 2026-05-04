import 'conta.dart';

void main() {
  print("===== CONTA BANCÁRIA (base) =====");
  var contaBase = ContaBancaria('Luacas', 1000);
  contaBase.exibirSaldo();
  contaBase.depositar(500);
  contaBase.sacar(300);
  contaBase.sacar(1500);  // saldo insuficiente
  contaBase.exibirSaldo();

  print("\n===== CONTA POUPANÇA (1%) =====");
  var cp = ContaPoupanca('Caio', 1000);
  cp.exibirSaldo();
  cp.depositar(200);
  cp.sacar(100);
  cp.aplicarRendimento();  // 1% de (1000+200-100 = 1100) -> 11
  cp.exibirSaldo();

  print("\n===== CONTA CORRENTE (5%) =====");
  var cc = ContaCorrente('Chaua', 2000);
  cc.exibirSaldo();
  cc.sacar(500);
  cc.aplicarRendimento();  // 5% de (2000-500 = 1500) -> 75
  cc.exibirSaldo();

  print("\n===== TESTES COM VALORES INVÁLIDOS =====");
  var contaInvalida = ContaBancaria('', -50);  // nome vazio, saldo negativo
  contaInvalida.exibirSaldo();                 // usa valores padrão
  contaInvalida.depositar(-10);                // valor inválido
  contaInvalida.sacar(-5);                     // valor inválido

  var cpInvalida = ContaPoupanca('', -100);    // herda validação
  cpInvalida.exibirSaldo();
  cpInvalida.aplicarRendimento();              // 1% de 0 ainda é 0

  print("\n===== FIM DOS TESTES =====");
}