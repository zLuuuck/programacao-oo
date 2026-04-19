import '../questao01/cliente.dart';
import '../questao03/produto.dart';
import '../questao05/itemCarrinho.dart';
import 'carrinho.dart';

void main() {
  var cliente = Cliente("Lucas", "a", 500, true);

  var p1 = Produto("Playstation", 3000, 10, true);
  var p2 = Produto("Controle", 100, 50, true);

  var item1 = ItemCarrinho(p1, 1);
  var item2 = ItemCarrinho(p2, 2);

  var carrinho = Carrinho(cliente);

  carrinho.adicionarItem(item1);
  carrinho.adicionarItem(item2);

  carrinho.exibirCarrinho();
}