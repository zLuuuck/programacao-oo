import 'calculavel.dart';
import 'ingressos.dart';

class IngressoPromocional extends Ingresso implements Calculavel {
  double _desconto = 0;

  IngressoPromocional(String evento, double valor, double desconto)
    : super(evento, valor) {
    this.desconto = desconto;
  }

  double get desconto => _desconto;

  set desconto(double desconto) {
    if (desconto < 0 || desconto > 100) {
      print('Desconto deve estar entre 0 e 100. Mantido: $_desconto%');
      return;
    }

    _desconto = desconto;
  }

  @override
  double valorFinal() {
    return valor - (valor * desconto / 100);
  }
}
