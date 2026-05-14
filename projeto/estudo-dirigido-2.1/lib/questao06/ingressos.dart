class Ingresso {
  String _evento = "Evento Desconhecido";
  double _preco = 0;

  Ingresso(String evento, double preco) {
    this.evento = evento;
    this.preco = preco;
  }

  set evento(String nomeEvento) {
    if (nomeEvento.isNotEmpty) {
      _evento = nomeEvento;
    } else {
      print("O nome do evento não pode ser vazio. Mantido valor padrão de 'Evento Desconecido'.");
      return;
    }
  }

  set preco(double valor) {
    if (valor >= 0) {
      _preco = valor;
    } else {
      print("O preço do ingresso não pode ser negativo. Mantido valor padrão de R\$ 0.");
      return;
    }
  }

  String get evento => _evento;
  double get preco => _preco;

  void exibirResumo() {
    print("Evento: $_evento");
    print("Preço: R\$ $_preco");
  }
}

class IngressoVIP extends Ingresso {
  final double _valorAdicional = 50;

  IngressoVIP(super.evento, super.preco);

  @override
  void exibirResumo() {
    super.exibirResumo();
    print("Valor Adicional VIP: R\$ $_valorAdicional");
    print("Preço Total VIP: R\$ ${preco + _valorAdicional}");
  }
}
