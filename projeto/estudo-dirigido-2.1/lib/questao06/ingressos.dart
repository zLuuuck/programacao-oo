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

  get evento => _evento;
  get preco => _preco;

  void exibirResumo() {
    print("Evento: $_evento");
    print("Preço: R\$ $_preco");
  }
}

class IngressoVIP extends Ingresso {
  double _valorAdicional = 50;

  IngressoVIP(String evento, double preco) : super(evento, preco);

  @override
  void exibirResumo() {
    super.exibirResumo();
    print("Valor Adicional VIP: R\$ $_valorAdicional");
    print("Preço Total VIP: R\$ ${preco + _valorAdicional}");
  }
}
