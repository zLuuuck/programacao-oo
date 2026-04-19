class Lampada {
  late bool _estaLigada;
  late int _intensidade;

  // construtor sem parâmetros
  Lampada(){
    _estaLigada = false;
    _intensidade = 50;
  }

   // Getters e Setters
  bool get estaLigada => _estaLigada;
  set estaLigada(bool valor) => _estaLigada = valor;

  int get intensidade => _intensidade;
  set intensidade(int valor) {
    if (valor < 0) {
      valor = 0;
    }
    if (valor > 100) {
      valor = 100;
    }
    _intensidade = valor;
  }

  void ligar() {
    if (_estaLigada) {
      print("A lâmpada já está ligada!");
    } else {
      _estaLigada = true;
      print("Lâmpada ligada!");
    }
  }

  void desligar() {
    if (!_estaLigada) {
      print("A lâmpada já está desligada!");
    } else {
      _estaLigada = false;
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
    print("Ligada: $_estaLigada");
    print("Intensidade: $_intensidade");
    print("======================");
  }
}
