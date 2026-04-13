import 'listarCarrinho.dart';
import '../questao05/item_carrinho.dart';
import '../questao03/produto.dart';

void main() {
  var listaItens = ListaCarrinho();
  var prod = Produto('Caneta', 2.5, 100, true);
  listaItens.inserir(ItemCarrinho(prod, 3));
  listaItens.inserir(ItemCarrinho(Produto('Caderno', 15, 50, true), 2));
  listaItens.remover(0);
  listaItens.exibirLista();
}
