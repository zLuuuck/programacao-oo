import 'cupomDesconto.dart';

void main() {
  var cupom = CupomDesconto("DESC10", 10, true);

  cupom.exibirCupom();

  double valor = 100;
  double desconto = cupom.calcularDesconto(valor);

  print("Valor: $valor");
  print("Desconto: $desconto");
}