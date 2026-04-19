import '../questao01/cliente.dart';
import 'listaCliente.dart';

void main() {
  var c1 = Cliente("Lucas", "a", 100, true);
  var c2 = Cliente("Caio", "b", 200, true);

  var lista = ListaCliente();

  lista.inserir(c1);
  lista.inserir(c2);

  lista.remover(0);

  print("Tamanho: ${lista.tamanho()}");

  lista.exibirLista();
}