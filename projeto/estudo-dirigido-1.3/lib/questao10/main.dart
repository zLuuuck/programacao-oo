import '../questao01/cliente.dart';
import '../questao03/produto.dart';
import '../questao05/itemCarrinho.dart';
import '../questao07/carrinho.dart';
import '../questao08/cupomDesconto.dart';
import '../questao09/pedido.dart';
import 'loja.dart';

void main() {
  var cliente = Cliente("Lucas", "a", 500, true);
  var produto = Produto("Playstation", 3000, 10, true);

  var item = ItemCarrinho(produto, 1);

  var carrinho = Carrinho(cliente);
  carrinho.adicionarItem(item);

  var cupom = CupomDesconto("DESC10", 10, true);

  var pedido = Pedido("001", carrinho, cupom);
  pedido.fecharPedido();

  var loja = Loja("Minha Loja");

  loja.cadastrarCliente(cliente);
  loja.cadastrarProduto(produto);
  loja.registrarPedido(pedido);

  loja.exibirResumoLoja();
}