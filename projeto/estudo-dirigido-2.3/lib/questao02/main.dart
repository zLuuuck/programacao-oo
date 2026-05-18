import '../lista_generica.dart';
import 'exibivel.dart';
import 'produto_eletronico.dart';
import 'produto_perecivel.dart';

void main() {
  ListaGenerica<Exibivel> produtos = ListaGenerica<Exibivel>();

  produtos.adicionar(ProdutoPerecivel('Leite', 6.50, '20/05/2026'));
  produtos.adicionar(ProdutoPerecivel('Iogurte', 4.80, '18/05/2026'));
  produtos.adicionar(ProdutoEletronico('Notebook', 3500.00, 24));
  produtos.adicionar(ProdutoEletronico('Smartphone', 2200.00, 12));
  produtos.adicionar(ProdutoPerecivel('Queijo', 28.90, '25/05/2026'));

  print('--- Impressão dos produtos ---');
  produtos.imprimirItens();

  print('\n--- Exibição dos produtos ---');
  for (var produto in produtos.obterItens()) {
    produto.exibir();
  }
}
