import 'loja.dart';

void main() {
  print('\n--- QUESTÃO 10 ---');
  var loja = Loja('Minha Loja', ListaCliente(), ListaProduto(), []);
  loja.cadastrarCliente(Cliente('João', 'joao@mail.com', 200, true));
  loja.cadastrarProduto(Produto('Livro', 45, 10, true));
  loja.exibirResumoLoja();
}
