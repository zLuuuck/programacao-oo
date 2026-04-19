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

  // Construtor com validação do nome
  Loja(String nome)
      : _nome = '',
        _clientes = ListaCliente(),
        _produtos = ListaProduto(),
        _pedidos = [] {
    this.nome = nome; // usa o setter para validar
  }

  // Getters
  String get nome => _nome;
  ListaCliente get clientes => _clientes;
  ListaProduto get produtos => _produtos;
  List<Pedido> get pedidos => _pedidos;

  // Setter com validação: nome não pode ser vazio
  set nome(String valor) {
    if (valor.trim().isEmpty) {
      print('O nome da loja não pode ser vazio.');
    }
    _nome = valor.trim();
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
    print("=== Resumo da Loja: $_nome ===\n");

    print("Clientes cadastrados:");
    _clientes.exibirLista();

    print("\nProdutos cadastrados:");
    _produtos.exibirLista();

    print("\nPedidos registrados:");
    if (_pedidos.isEmpty) {
      print("Nenhum pedido.");
    } else {
      for (var p in _pedidos) {
        p.exibirResumoPedido();
        print(""); // linha em branco entre pedidos
      }
    }
  }
}