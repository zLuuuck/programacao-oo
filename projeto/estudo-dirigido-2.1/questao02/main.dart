import 'produto.dart';

void main() {
  Produto produto = Produto('Arroz', 10.0);
  produto.exibirDados();

  print('');

  ProdutoPerecivel produtoPerecivel = ProdutoPerecivel('Leite', 5.0, '2023-12-31');
  produtoPerecivel.exibirDados();
}