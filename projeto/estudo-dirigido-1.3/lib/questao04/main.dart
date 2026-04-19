import '../questao03/produto.dart';
import 'listaProduto.dart';

void main() {
  var p1 = Produto("Playstation", 3000, 10, true);
  var p2 = Produto("Controle", 100, 50, true);

  var lista = ListaProduto();

  lista.inserir(p1);
  lista.inserir(p2);

  lista.remover(0);

  print("Tamanho: ${lista.tamanho()}");

  lista.exibirLista();
}