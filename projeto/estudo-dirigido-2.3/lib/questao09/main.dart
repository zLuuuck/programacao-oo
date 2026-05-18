import '../lista_generica.dart';
import 'pedido.dart';
import 'pedido_delivery.dart';
import 'pedido_express.dart';
import 'pedido_retirada.dart';

void main() {
  ListaGenerica<Pedido> pedidos = ListaGenerica<Pedido>();

  pedidos.adicionar(PedidoDelivery('1001', 120.00, 'Rua A, 100', 15.00));
  pedidos.adicionar(PedidoRetirada('1002', 80.00, 'Ana'));
  pedidos.adicionar(PedidoExpress('1003', 200.00, 40.00));
  pedidos.adicionar(PedidoDelivery('1004', 150.00, 'Rua B, 250', 20.00));
  pedidos.adicionar(PedidoRetirada('1005', 60.00, 'Bruno'));

  print('--- Impressão dos pedidos ---');
  pedidos.imprimirItens();

  print('\n--- Detalhes dos pedidos ---');
  for (var pedido in pedidos.obterItens()) {
    print('Valor final: R\$ ${pedido.valorFinal().toStringAsFixed(2)}');
    pedido.exibirPedido();
  }
}
