class Retangulo {
  double _largura;
  double _altura;

  // construtor padrão
  Retangulo(this._largura, this._altura);

  // construtor sem parâmetros (1x1)
  Retangulo.padrao()
      : _largura = 1,
        _altura = 1;

  // construtor nomeado quadrado
  Retangulo.quadrado(double lado)
      : _largura = lado,
        _altura = lado;

  double calcularArea() => _largura * _altura;

  double calcularPerimetro() => 2 * (_largura + _altura);

  void exibirDados() {
    print("Largura: $_largura | Altura: $_altura");
    print("Área: ${calcularArea()} | Perímetro: ${calcularPerimetro()}");
  }
}