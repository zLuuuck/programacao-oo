import 'conta.dart';

void main() {
  var conta1 = Conta.bancaria("123", "João");
  var conta2 = Conta.vip("456", "Maria", 1000);

  conta1.exibirResumo();
  conta2.exibirResumo();

  conta1.depositar(200);
  conta1.sacar(50);

  conta2.sacar(300);
  conta2.depositar(500);

  conta1.exibirResumo();
  conta2.exibirResumo();
}