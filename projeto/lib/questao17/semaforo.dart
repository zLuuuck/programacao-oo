class Semaforo {
  String corAtual;
  int tempoRestante;

  Semaforo(this.corAtual, this.tempoRestante) {
    if (corAtual != "vermelho" &&
        corAtual != "verde" &&
        corAtual != "amarelo") {
      print("Cor inválida! Definida como vermelho");
      corAtual = "vermelho";
    }

    _definirTempo();
  }

  void _definirTempo() {
    if (corAtual == "vermelho") tempoRestante = 5;
    if (corAtual == "verde") tempoRestante = 4;
    if (corAtual == "amarelo") tempoRestante = 2;
  }

  void trocarCor() {
    if (corAtual == "vermelho") corAtual = "verde";
    else if (corAtual == "verde") corAtual = "amarelo";
    else corAtual = "vermelho";

    _definirTempo();
  }

  void reduzirTempo() {
    tempoRestante--;

    if (tempoRestante <= 0) {
      trocarCor();
    }
  }

  void exibirEstado() {
    print("Cor: $corAtual | Tempo: $tempoRestante");
  }
}