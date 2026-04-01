class Data {
  int dia;
  int mes;
  int ano;

  Data(this.dia, this.mes, this.ano) {
    if (1 > dia || dia > 31) {
      print("dia deve estar entre 1 e 31!");
    }
    if (1 > mes || mes > 12) {
      print("mes deve estar entre 0-12!");
    }
    if (0 > ano) {
      print("ano deve ser maior que zero!");
    }
  }

  void exibirDia() {
    print("dia: $dia/$mes/$ano");
  }
}
