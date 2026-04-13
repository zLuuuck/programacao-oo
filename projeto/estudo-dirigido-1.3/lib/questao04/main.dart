import 'listarProduto.dart';

void main() {
  var listaProdutos = ListaProduto();
  listaProdutos.inserir(Produto('Mouse', 80, 20, true));
  listaProdutos.inserir(Produto('Teclado', 150, 15, true));
  listaProdutos.remover(1);
  listaProdutos.exibirLista();
}
