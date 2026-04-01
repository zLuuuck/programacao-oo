class Data {
  int _dia;
  int _mes;
  int _ano;

  Data(this._dia, this._mes, this._ano) {
    if (1 > _dia || _dia > 31) {
      print("_dia deve estar entre 1 e 31!");
    }
    if (1 > _mes || _mes > 12) {
      print("_mes deve estar entre 0-12!");
    }
    if (0 > _ano) {
      print("_ano deve ser maior que zero!");
    }
  }

  void exibirDia() {
    print("_dia: $_dia/$_mes/$_ano");
  }
}
