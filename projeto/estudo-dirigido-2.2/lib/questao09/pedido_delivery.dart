import 'pedido.dart';

class PedidoDelivery extends Pedido {
  String _enderecoEntrega = 'Não informado';
  double _taxaEntrega = 0;

  PedidoDelivery(
    super.codigo,
    super.valorTotal,
    String enderecoEntrega,
    double taxaEntrega,
  ) {
    this.enderecoEntrega = enderecoEntrega;
    this.taxaEntrega = taxaEntrega;
  }

  String get enderecoEntrega => _enderecoEntrega;

  set enderecoEntrega(String enderecoEntrega) {
    if (enderecoEntrega.trim().isEmpty) {
      print(
        'Endereço de entrega não pode ser vazio. Mantido: $_enderecoEntrega',
      );
      return;
    }

    _enderecoEntrega = enderecoEntrega;
  }

  double get taxaEntrega => _taxaEntrega;

  set taxaEntrega(double taxaEntrega) {
    if (taxaEntrega < 0) {
      print(
        'Taxa de entrega não pode ser negativa. Mantida: R\$ $_taxaEntrega',
      );
      return;
    }

    _taxaEntrega = taxaEntrega;
  }

  @override
  void exibirPedido() {
    print('Pedido delivery');
    print('Código: $codigo');
    print('Valor total: R\$ $valorTotal');
    print('Endereço de entrega: $enderecoEntrega');
    print('Taxa de entrega: R\$ $taxaEntrega');
    print('Valor final: R\$ ${valorTotal + taxaEntrega}');
  }
}
