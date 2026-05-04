import 'pedido.dart';

class PedidoDelivery extends Pedido {
  double taxa;

  PedidoDelivery(String codigo, double valor, this.taxa)
      : super(codigo, valor);

  double total() {
    return valor + taxa;
  }
}