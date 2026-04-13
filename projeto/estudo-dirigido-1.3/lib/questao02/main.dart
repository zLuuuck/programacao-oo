import './listaCliente.dart';

void main(){
  print('--- QUESTÃO 2 ---');
  var listaClientes = ListaCliente();
  listaClientes.inserir(Cliente('Ana', 'ana@mail.com', 100, true));
  listaClientes.inserir(Cliente('Bruno', 'bruno@mail.com', 50, true));
  listaClientes.remover(0);
  print('Tamanho: ${listaClientes.tamanho()}');
  listaClientes.exibirLista();
  print('Cliente na pos 0: ${listaClientes.get(0)?.nome}');
}