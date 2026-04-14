import 'loja.dart';
import '../questao02/listaCliente.dart';
import '../questao04/listarProduto.dart';
import '../questao01/cliente.dart';
import '../questao03/produto.dart';

void main() {
  var loja = Loja('Minha Loja', ListaCliente(), ListaProduto(), []);
  loja.cadastrarCliente(Cliente('Lucas', 'lucas@gmail.com', 200, true));
  loja.cadastrarProduto(Produto('Pokémon Fire Red', 45, 10, true));
  loja.exibirResumoLoja();
}
