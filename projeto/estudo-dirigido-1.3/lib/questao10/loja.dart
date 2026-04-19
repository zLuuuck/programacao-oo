import '../questao01/cliente.dart';
import '../questao02/listaCliente.dart';
import '../questao03/produto.dart';
import '../questao04/listaProduto.dart';
import '../questao09/pedido.dart';

class Loja {
  String _nome;
  ListaCliente _clientes;
  ListaProduto _produtos;
  List<Pedido> _pedidos;

  Loja(String nome)
      : _nome = '',
        _clientes = ListaCliente(),
        _produtos = ListaProduto(),
        _pedidos = [] {
    this.nome = nome;
  }

  set nome(String valor) {
    if (valor.trim().isNotEmpty) {
      _nome = valor;
    }
  }

  void cadastrarCliente(Cliente c) {
    _clientes.inserir(c);
  }

  void cadastrarProduto(Produto p) {
    _produtos.inserir(p);
  }

  void registrarPedido(Pedido p) {
    _pedidos.add(p);
  }

  void exibirResumoLoja() {
    print("Loja: $_nome");

    print("Clientes:");
    _clientes.exibirLista();

    print("Produtos:");
    _produtos.exibirLista();

    print("Pedidos:");
    for (var p in _pedidos) {
      p.exibirResumoPedido();
    }
  }
}