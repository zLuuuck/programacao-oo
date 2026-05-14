import 'ingresso_camarote.dart';
import 'ingresso_promocional.dart';
import 'ingresso_vip.dart';
import 'lista_generica.dart';
import 'calculavel.dart';

void main() {

  ListaGenerica<Calculavel> lista = ListaGenerica<Calculavel>();
  IngressoVip vip1 = IngressoVip('Show de Rock', 200, 80);
  IngressoVip vip2 = IngressoVip('Show de Pop', 180, 70);
  IngressoPromocional promocional1 = IngressoPromocional('Teatro Infantil', 100, 20);
  IngressoPromocional promocional2 = IngressoPromocional('Cinema Especial', 60, 15);
  IngressoCamarote camarote1 = IngressoCamarote('Festival de Jazz', 300, 50, 'Setor A');

  lista.adicionar(vip1);
  lista.adicionar(vip2);
  lista.adicionar(promocional1);
  lista.adicionar(promocional2);
  lista.adicionar(camarote1);

  print('\nINGRESSOS:');
  lista.imprimirItens();

  print('\nVALORES FINAIS:');

  for (var ingresso in lista.obterItens()) {
    print('Valor Final: R\$ ${ingresso.valorFinal()}');
  }
}