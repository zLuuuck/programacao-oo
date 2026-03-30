import 'produto.dart';
import 'pedido.dart';

void main() {
  var prod1 = Produto(2, "Calça", 200);
  var prod2 = Produto(3, "Camisa", 100);

  var p1 = Pedido(1, prod1, 2);
  var p2 = Pedido(2, prod2, 3);

  p1.exibirPedido();
  p2.exibirPedido();
}