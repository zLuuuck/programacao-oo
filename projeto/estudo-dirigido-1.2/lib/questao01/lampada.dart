class Lampada {
  bool _ligada;
  int _intensidade;

  // construtor sem parâmetros
  Lampada() : _ligada = false, _intensidade = 50;

  void ligar() {
    if (_ligada) {
      print("A lâmpada já está ligada!");
    } else {
      _ligada = true;
      print("Lâmpada ligada!");
    }
  }

  void desligar() {
    if (!_ligada) {
      print("A lâmpada já está desligada!");
    } else {
      _ligada = false;
      print("Lâmpada desligada!");
    }
  }

  void aumentar() {
    if (_intensidade < 100) {
      _intensidade += 10;
      print("Intensidade aumentada para $_intensidade");
    } else {
      print("Intensidade já está no máximo!");
    }
  }

  void diminuir() {
    if (_intensidade > 0) {
      _intensidade -= 10;
      print("Intensidade diminuída para $_intensidade");
    } else {
      print("Intensidade já está no mínimo!");
    }
  }

  void exibirEstado() {
    print("======================");
    print("Ligada: $_ligada");
    print("Intensidade: $_intensidade");
    print("======================");
  }
}