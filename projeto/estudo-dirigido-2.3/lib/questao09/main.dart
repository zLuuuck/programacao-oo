import 'pedido.dart';
import 'pedido_delivery.dart';
import 'pedido_retirada.dart';

void main() {
  Pedido pedidoDelivery = PedidoDelivery('001', 100, 'Rua das Flores, 123', 10);
  Pedido pedidoRetirada = PedidoRetirada('002', 80, 'Lucas');

  pedidoDelivery.exibirPedido();
  print('');
  pedidoRetirada.exibirPedido();
}
