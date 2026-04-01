class Relogio {
  int _hora;
  int _minuto;
  int _segundo;

  Relogio(this._hora, this._minuto, this._segundo) {
    if (0 > _hora || _hora > 23) {
      print("Hora deve estar entre 0 e 23!");
    }
    if (0 > _minuto || _minuto > 59) {
      print("Minuto deve estar entre 0-59!");
    }
    if (0 > _segundo || _segundo > 59) {
      print("Minuto deve estar entre 0-59!");
    }
  }

  void exibirHorario() {
    print("Hora: $_hora:$_minuto:$_segundo");
  }
}
