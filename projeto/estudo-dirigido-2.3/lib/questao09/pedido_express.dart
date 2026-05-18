import 'pedido.dart';

class PedidoExpress extends Pedido {
  double _taxaUrgencia = 0;

  PedidoExpress(super.codigo, super.valorTotal, double taxaUrgencia) {
    this.taxaUrgencia = taxaUrgencia;
  }

  double get taxaUrgencia => _taxaUrgencia;

  set taxaUrgencia(double taxaUrgencia) {
    if (taxaUrgencia < 0) {
      print('Taxa de urgência não pode ser negativa. Mantida: R\$ $_taxaUrgencia');
      return;
    }
    _taxaUrgencia = taxaUrgencia;
  }

  @override
  double valorFinal() => valorTotal + taxaUrgencia;

  @override
  void exibirPedido() {
    print('Pedido Express | Código: $codigo | Valor: R\$ ${valorTotal.toStringAsFixed(2)} | Taxa urgência: R\$ ${taxaUrgencia.toStringAsFixed(2)} | Total: R\$ ${valorFinal().toStringAsFixed(2)}');
  }

  @override
  String toString() {
    return 'Pedido Express | Código: $codigo | Valor: R\$ ${valorTotal.toStringAsFixed(2)} | Taxa urgência: R\$ ${taxaUrgencia.toStringAsFixed(2)} | Total: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}
