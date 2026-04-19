import '../questao03/produto.dart';
import '../questao05/itemCarrinho.dart';
import 'listaCarrinho.dart';

void main() {
  var p = Produto("Headset", 200, 20, true);

  var i1 = ItemCarrinho(p, 1);
  var i2 = ItemCarrinho(p, 2);

  var lista = ListaCarrinho();

  lista.inserir(i1);
  lista.inserir(i2);

  lista.remover(0);

  print("Tamanho: ${lista.tamanho()}");

  lista.exibirLista();
}