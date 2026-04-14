import '../questao02/listaCliente.dart';
import '../questao04/listarProduto.dart';
import '../questao09/pedido.dart';
import '../questao01/cliente.dart';
import '../questao03/produto.dart';

class Loja {
  String _nome;
  ListaCliente _clientes;
  ListaProduto _produtos;
  List<Pedido> _pedidos;

  Loja(this._nome, this._clientes, this._produtos, this._pedidos){
    if(_nome.isEmpty){
      print("Nome não pode ser vazio!");
    }
  }
  String get nome => _nome;
  ListaCliente get clientes => _clientes;
  ListaProduto get produtos => _produtos;
  List<Pedido> get pedidos => _pedidos;

  set nome(String valor) {
    if (valor.isNotEmpty) _nome = valor;
  }
  set clientes(ListaCliente valor) => _clientes = valor;
  set produtos(ListaProduto valor) => _produtos = valor;
  set pedidos(List<Pedido> valor) => _pedidos = valor;

  void cadastrarCliente(Cliente cliente) => _clientes.inserir(cliente);
  void cadastrarProduto(Produto produto) => _produtos.inserir(produto);
  void registrarPedido(Pedido pedido) => _pedidos.add(pedido);

  void exibirResumoLoja() {
    print('\n===== LOJA: $_nome =====');
    print('Clientes: ${_clientes.tamanho()} | Produtos: ${_produtos.tamanho()} | Pedidos: ${_pedidos.length}');
    _clientes.exibirLista();
    _produtos.exibirLista();
  }
}