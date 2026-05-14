import 'calculavel.dart';
import 'ingressos.dart';

class IngressoVip extends Ingresso implements Calculavel {
  double _valorAdicional = 0;

  IngressoVip(
    super.evento,
    super.valor,
    double valorAdicional,
  ) {
    this.valorAdicional = valorAdicional;
  }

  double get valorAdicional => _valorAdicional;

  set valorAdicional(double valorAdicional) {
    if (valorAdicional < 0) {
      print(
        'Valor adicional não pode ser negativo. Mantido: R\$ $_valorAdicional',
      );
      return;
    }

    _valorAdicional = valorAdicional;
  }

  @override
  double valorFinal() {
    return valor + valorAdicional;
  }

  @override
  String toString() {
    return 'Evento: $evento | '
        'Tipo: VIP | ';
  }
}