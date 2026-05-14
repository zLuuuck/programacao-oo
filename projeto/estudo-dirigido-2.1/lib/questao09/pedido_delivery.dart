import 'pedido.dart';

class PedidoDelivery extends Pedido {
  double taxa;

  PedidoDelivery(super.codigo, super.valor, this.taxa);

  double total() {
    return valor + taxa;
  }
}