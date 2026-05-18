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
    return 'Ingresso VIP | Evento: $evento | Valor: R\$ ${valor.toStringAsFixed(2)} | Adicional: R\$ ${valorAdicional.toStringAsFixed(2)} | Valor final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}