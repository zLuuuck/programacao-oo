import './conta.dart';
import './gerente.dart';

void main() {
  var conta = Conta("Lucas", 1000);

  var g1 = Gerente();
  var g2 = Gerente();

  g1.depositar(conta, 500);
  conta.exibir();

  g2.sacar(conta, 200);
  conta.exibir();
}

// a) Por que os dois gerentes conseguem alterar o mesmo saldo?
// Pois ambos recebem a mesma conta. Para acessar contas diferentes, ai o gerente deveria ter um método para acessar uma conta especificada "void acessarConta(conta)"

// b) Cada gerente possui uma conta própria ou ambos estão operando sobre a mesma instância?
// Ambos estão operando sobre a mesma instância (conta);

// c) O que esse exercício mostra sobre compartilhamento de referência entre objetos? 
// Mostra que varias /objetos podem apontar para o mesmo objeto
// Alterações são feitas globalmente