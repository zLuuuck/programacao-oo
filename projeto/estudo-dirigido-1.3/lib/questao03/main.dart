import 'produto.dart';

void main() {
  var p1 = Produto("Playstation", 3000, 10, true);
  var p2 = Produto("Controle", 100, 50, true);

  p1.reporEstoque(5);
  p2.retirarEstoque(10);

  p1.exibirProduto();
  p2.exibirProduto();
}