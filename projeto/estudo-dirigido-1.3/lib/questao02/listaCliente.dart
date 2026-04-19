import '../questao01/cliente.dart';

class ListaCliente {
  List<Cliente> _clientes = [];

  void inserir(Cliente cliente) {
    _clientes.add(cliente);
  }

  void remover(int i) {
    if (i >= 0 && i < _clientes.length) {
      _clientes.removeAt(i);
    }
  }

  int tamanho() {
    return _clientes.length;
  }

  Cliente get(int i) {
    if (i >= 0 && i < _clientes.length) {
      return _clientes[i];
    }

    print("Índice inválido");
    return _clientes[0]; // ou qualquer padrão
  }

  void exibirLista() {
    for (var c in _clientes) {
      c.exibirCliente();
    }
  }
}
