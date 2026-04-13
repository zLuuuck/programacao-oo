import 'dart:io';

class Data {
  int _dia;
  int _mes;
  int _ano;

  Data(this._dia, this._mes, this._ano) {
    if (_dia < 1 || _dia > 31) {
      print("Dia deve estar entre 1 e 31!");
      exit(1);
    }
    if (_mes < 1 || _mes > 12) {
      print("Mês deve estar entre 1 e 12!");
      exit(1);
    }
    if (_ano <= 0) {
      print("Ano deve ser maior que zero!");
      exit(1);
    }
  }

  void exibirDia() {
    print("Data: $_dia/$_mes/$_ano");
  }
}