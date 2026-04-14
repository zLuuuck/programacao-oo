import 'produto.dart';

void main() {
  var p1 = Produto("Mouse", 50, 10, true);
  var p2 = Produto("Teclado", 100, 5, true);

  // setters
  p1.preco = 60;
  p2.nome = "Teclado Mecânico";

  // operações
  p1.reporEstoque(5);
  p2.retirarEstoque(2);

  // exibir
  p1.exibirProduto();
  p2.exibirProduto();
}