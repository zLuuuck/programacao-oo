<<<<<<< HEAD
import '../questao06/produto.dart';
import './pedido.dart';

void main() {
  Produto p1 = Produto(1, "Teclado", 100.0, 10);
  Produto p2 = Produto(2, "Mouse", 50.0, 20);

  Pedido pedido1 = Pedido(1, 2, p1);
  Pedido pedido2 = Pedido(2, 5, p2);

  pedido1.exibirPedido();
  pedido2.exibirPedido();
=======
import 'produto.dart';
import 'pedido.dart';

void main() {
  var prod1 = Produto(2, "Calça", 200);
  var prod2 = Produto(3, "Camisa", 100);

  var p1 = Pedido(1, prod1, 2);
  var p2 = Pedido(2, prod2, 3);

  p1.exibirPedido();
  p2.exibirPedido();
>>>>>>> b8def7a6b2b3af73e5a1d9c90f020a455cb6059a
}