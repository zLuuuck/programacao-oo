import 'pedido.dart';

class PedidoRetirada extends Pedido {
  String _nomeCliente = 'Não informado';

  PedidoRetirada(String codigo, double valorTotal, String nomeCliente)
    : super(codigo, valorTotal) {
    this.nomeCliente = nomeCliente;
  }

  String get nomeCliente => _nomeCliente;

  set nomeCliente(String nomeCliente) {
    if (nomeCliente.trim().isEmpty) {
      print('Nome do cliente não pode ser vazio. Mantido: $_nomeCliente');
      return;
    }

    _nomeCliente = nomeCliente;
  }

  @override
  void exibirPedido() {
    print('Pedido retirada');
    print('Código: $codigo');
    print('Valor total: R\$ $valorTotal');
    print('Nome do cliente: $nomeCliente');
  }
}
