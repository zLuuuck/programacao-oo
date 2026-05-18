import 'pedido.dart';

class PedidoRetirada extends Pedido {
  String _nomeCliente = 'Não informado';

  PedidoRetirada(super.codigo, super.valorTotal, String nomeCliente) {
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
  double valorFinal() => valorTotal;

  @override
  void exibirPedido() {
    print('Pedido Retirada | Código: $codigo | Valor: R\$ ${valorTotal.toStringAsFixed(2)} | Cliente: $nomeCliente | Total: R\$ ${valorFinal().toStringAsFixed(2)}');
  }

  @override
  String toString() {
    return 'Pedido Retirada | Código: $codigo | Valor: R\$ ${valorTotal.toStringAsFixed(2)} | Cliente: $nomeCliente | Total: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}
