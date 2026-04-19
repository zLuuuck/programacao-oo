import '../questao01/cliente.dart';
import '../questao03/produto.dart';
import '../questao05/itemCarrinho.dart';
import '../questao07/carrinho.dart';
import '../questao08/cupomDesconto.dart';
import 'pedido.dart';

void main() {
  var cliente = Cliente("Lucas", "a", 500, true);

  var p = Produto("Playstation", 3000, 10, true);

  var item = ItemCarrinho(p, 1);

  var carrinho = Carrinho(cliente);
  carrinho.adicionarItem(item);

  var cupom = CupomDesconto("DESC10", 10, true);

  var pedido = Pedido("001", carrinho, cupom);

  pedido.fecharPedido();

  pedido.exibirResumoPedido();
}