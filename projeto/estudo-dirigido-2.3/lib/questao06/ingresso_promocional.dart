import 'calculavel.dart';
import 'ingressos.dart';

class IngressoPromocional extends Ingresso implements Calculavel {
  double _desconto = 0;

  IngressoPromocional(
    super.evento,
    super.valor,
    double desconto,
  ) {
    this.desconto = desconto;
  }

  double get desconto => _desconto;

  set desconto(double desconto) {
    if (desconto < 0) {
      print('Desconto não pode ser negativo. Mantido: R\$ $_desconto');
      return;
    }

    _desconto = desconto;
  }

  @override
  double valorFinal() {
    return valor - desconto;
  }

  @override
  String toString() {
    return 'Evento: $evento | '
        'Tipo: Promocional | ';
  }
}