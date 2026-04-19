import '../questao03/produto.dart';
import 'itemCarrinho.dart';

void main() {
  var p1 = Produto("Playstation", 3000, 10, true);
  var p2 = Produto("Controle", 100, 50, true);

  var item1 = ItemCarrinho(p1, 1);
  var item2 = ItemCarrinho(p2, 2);

  item2.quantidade = 3;

  item1.exibirItem();
  item2.exibirItem();

  print("Subtotal item1: ${item1.calcularSubtotal()}");
  print("Subtotal item2: ${item2.calcularSubtotal()}");
}