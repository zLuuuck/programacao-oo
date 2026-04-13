class Retangulo {
  double _largura;
  double _altura;

  // Construtor padrão com parâmetros
  Retangulo(this._largura, this._altura)
      : assert(_largura > 0, 'Largura deve ser positiva'),
        assert(_altura > 0, 'Altura deve ser positiva');

  // Construtor sem parâmetros (quadrado 1x1)
  Retangulo.vazio()
      : _largura = 1,
        _altura = 1;

  // Construtor nomeado para quadrado
  Retangulo.quadrado(double lado)
      : _largura = lado,
        _altura = lado,
        assert(lado > 0, 'Lado deve ser positivo');

  double calcularArea() => _largura * _altura;
  double calcularPerimetro() => 2 * (_largura + _altura);

  void exibirDados() {
    print('Retângulo ${_largura}x$_altura | Área: ${calcularArea()} | Perímetro: ${calcularPerimetro()}');
  }
}