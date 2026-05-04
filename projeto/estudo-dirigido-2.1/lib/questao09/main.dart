import 'pedido_delivery.dart';

void main() {
  var p = PedidoDelivery("001", 100, 10);
  p.exibir();
  print(p.total());
}