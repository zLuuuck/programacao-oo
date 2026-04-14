import '../questao01/cliente.dart';
import '../questao03/produto.dart';
import '../questao05/item_carrinho.dart';
import '../questao07/carrinho.dart';
import 'pedido.dart';

void main() {
  var cliente = Cliente("Lucas", "lucas@gmail.com", 100, true);

  var p1 = Produto("Mouse", 50, 10, true);
  var p2 = Produto("Teclado", 100, 5, true);

  var item1 = ItemCarrinho(p1, 2);
  var item2 = ItemCarrinho(p2, 1);

  var carrinho = Carrinho(cliente);
  carrinho.adicionarItem(item1);
  carrinho.adicionarItem(item2);

  var pedido = Pedido("001", carrinho);

  pedido.fecharPedido();
  pedido.exibirResumoPedido();
}