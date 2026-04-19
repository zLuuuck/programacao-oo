class Retangulo {
  double _largura;
  double _altura;

  // Construtores (chamam os setters)
  Retangulo(double largura, double altura) : _largura = largura, _altura = altura {
    this.largura = largura;
    this.altura = altura;
  }

  Retangulo.vazio() : _largura = 1, _altura = 1;

  Retangulo.quadrado(double lado) : _largura = lado, _altura = lado {
    this.largura = lado;
    this.altura = lado;
  }

  // Getters
  double get largura => _largura;
  double get altura => _altura;

  // Setters com validação (corrigem valores inválidos)
  set largura(double valor) {
    if (valor <= 0) {
      print("Largura inválida! Definindo como 1.");
      _largura = 1;
    } else {
      _largura = valor;
    }
  }

  set altura(double valor) {
    if (valor <= 0) {
      print("Altura inválida! Definindo como 1.");
      _altura = 1;
    } else {
      _altura = valor;
    }
  }

  double calcularArea() => _largura * _altura;
  double calcularPerimetro() => 2 * (_largura + _altura);

  void exibirDados() {
    print('Retângulo ${_largura}x$_altura | Área: ${calcularArea()} | Perímetro: ${calcularPerimetro()}');
  }
}