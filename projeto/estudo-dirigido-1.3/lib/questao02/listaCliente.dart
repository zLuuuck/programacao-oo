import '../questao01/cliente.dart';

class ListaCliente {
  final List<Cliente> _clientes = [];

  void inserir(Cliente cliente) => _clientes.add(cliente);

  void remover(int i) {
    if (i >= 0 && i < _clientes.length) {
      _clientes.removeAt(i);
    }
  }

  int tamanho() => _clientes.length;

  Cliente? get(int i) {
    return (i >= 0 && i < _clientes.length) ? _clientes[i] : null;
  }

  void exibirLista() {
    print('--- Clientes (${_clientes.length}) ---');
    for (int i = 0; i < _clientes.length; i++) {
      print('[$i] ${_clientes[i].nome}');
    }
  }
}