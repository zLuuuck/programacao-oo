import 'ingresso_promocional.dart';
import 'ingresso_vip.dart';

void main() {
  IngressoVip vip = IngressoVip('Show de Rock', 150, 50);
  IngressoPromocional promocional = IngressoPromocional('Teatro', 100, 20);

  print('Valor final do ingresso VIP: R\$ ${vip.valorFinal()}');
  print('Valor final do ingresso promocional: R\$ ${promocional.valorFinal()}');
}
