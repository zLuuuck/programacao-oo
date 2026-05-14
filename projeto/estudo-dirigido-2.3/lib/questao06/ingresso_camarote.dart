import 'calculavel.dart';
import 'ingressos.dart';

class IngressoCamarote extends Ingresso implements Calculavel {
  double _taxaServico = 0;
  String _localizacao = 'Não informada';

  IngressoCamarote(
    super.evento,
    super.valor,
    double taxaServico,
    String localizacao,
  ) {
    this.taxaServico = taxaServico;
    this.localizacao = localizacao;
  }

  double get taxaServico => _taxaServico;

  set taxaServico(double taxaServico) {
    if (taxaServico < 0) {
      print(
        'Taxa de serviço não pode ser negativa. Mantido: R\$ $_taxaServico',
      );
      return;
    }

    _taxaServico = taxaServico;
  }

  String get localizacao => _localizacao;

  set localizacao(String localizacao) {
    if (localizacao.trim().isEmpty) {
      print('Localização inválida. Mantido: $_localizacao');
      return;
    }

    _localizacao = localizacao;
  }

  @override
  double valorFinal() {
    return valor + taxaServico;
  }

  @override
  String toString() {
    return 'Evento: $evento | Tipo: Camarote | Localização: $localizacao | ';
  }
}