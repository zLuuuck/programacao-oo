class Ingresso {
  String _evento = 'Não informado';
  double _valor = 0;

  Ingresso(String evento, double valor) {
    this.evento = evento;
    this.valor = valor;
  }

  String get evento => _evento;

  set evento(String evento) {
    if (evento.trim().isEmpty) {
      print('Evento não pode ser vazio. Mantido: $_evento');
      return;
    }

    _evento = evento;
  }

  double get valor => _valor;

  set valor(double valor) {
    if (valor < 0) {
      print('Valor não pode ser negativo. Mantido: R\$ $_valor');
      return;
    }

    _valor = valor;
  }
}