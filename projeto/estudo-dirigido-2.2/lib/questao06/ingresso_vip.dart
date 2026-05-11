import 'calculavel.dart';
import 'ingressos.dart';

class IngressoVip extends Ingresso implements Calculavel {
  double _valorAdicional = 0;

  IngressoVip(String evento, double valor, double valorAdicional)
    : super(evento, valor) {
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
}
