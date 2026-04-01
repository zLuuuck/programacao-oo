class Relogio {
  int hora;
  int minuto;
  int segundo;

  Relogio(this.hora, this.minuto, this.segundo) {
    if (0 > hora || hora > 23) {
      print("Hora deve estar entre 0 e 23!");
    }
    if (0 > minuto || minuto > 59) {
      print("Minuto deve estar entre 0-59!");
    }
    if (0 > segundo || segundo > 59) {
      print("Minuto deve estar entre 0-59!");
    }
  }

  void exibirHorario() {
    print("Hora: $hora:$minuto:$segundo");
  }
}
