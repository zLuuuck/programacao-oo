import 'produto.dart';

void main() {
  Produto produto = Produto('Computador', 10000.0);
  produto.exibirDados();

  print('');

  ProdutoPerecivel produtoPerecivel = ProdutoPerecivel('Creme de Leite', 5.0, '2023-12-31');
  produtoPerecivel.exibirDados();
}