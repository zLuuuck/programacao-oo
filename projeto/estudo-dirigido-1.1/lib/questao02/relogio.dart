import 'dart:io';

class Relogio {
  int _hora;
  int _minuto;
  int _segundo;

  Relogio(this._hora, this._minuto, this._segundo) {
    if (_hora < 0 || _hora > 23) {
      print("Hora deve estar entre 0 e 23!");
      exit(1);
    }
    if (_minuto < 0 || _minuto > 59) {
      print("Minuto deve estar entre 0-59!");
      exit(1);
    }
    if (_segundo < 0 || _segundo > 59) {
      print("Segundo deve estar entre 0-59!");
      exit(1);
    }
  }

  void exibirHorario() {
    print("Hora: $_hora:$_minuto:$_segundo");
  }
}