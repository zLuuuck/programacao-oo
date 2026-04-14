import '../questao03/produto.dart';
import 'item_carrinho.dart';

void main() {
  var p1 = Produto("Mouse", 50, 10, true);
  var p2 = Produto("Teclado", 100, 5, true);

  var item1 = ItemCarrinho(p1, 2);
  var item2 = ItemCarrinho(p2, 1);

  // alterando quantidade
  item1.quantidade = 3;
  item2.quantidade = 2;

  // exibindo
  item1.exibirItem();
  item2.exibirItem();
}