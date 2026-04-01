import '../questao06/produto.dart';
import 'pedido.dart';

void main() {
  Produto p1 = Produto(1, "Teclado", 100.0, 10);
  Produto p2 = Produto(2, "Mouse", 50.0, 20);

  Pedido pedido1 = Pedido(1, 2, p1);
  Pedido pedido2 = Pedido(2, 5, p2);

  pedido1.exibirPedido();
  pedido2.exibirPedido();
}