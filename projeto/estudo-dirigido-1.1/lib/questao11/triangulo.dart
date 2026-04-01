import 'dart:math';

class Triangulo {
  double _lado1;
  double _lado2;
  double _lado3;
  String _char;

  // Construtor
  Triangulo(this._lado1, this._lado2, this._lado3, this._char) {
    _validar();
  }

  // Validações
  void _validar() {
    if (_lado1 <= 0 || _lado2 <= 0 || _lado3 <= 0) {
      print('Lados devem ser maiores que zero');
    }

    if (!(_lado1 + _lado2 > _lado3 &&
        _lado1 + _lado3 > _lado2 &&
        _lado2 + _lado3 > _lado1)) {
      print('Os lados não formam um triângulo válido');
    }

    if (_char.isEmpty || _char.length != 1) {
      print('Caractere deve ter exatamente 1 símbolo');
    }
  }

  // Getters
  double get lado1 => _lado1;
  double get lado2 => _lado2;
  double get lado3 => _lado3;
  String get char => _char;

  // Setters
  set lado1(double valor) {
    _lado1 = valor;
    _validar();
  }

  set lado2(double valor) {
    _lado2 = valor;
    _validar();
  }

  set lado3(double valor) {
    _lado3 = valor;
    _validar();
  }

  set char(String valor) {
    _char = valor;
    _validar();
  }

  // Métodos
  double calcularPerimetro() {
    return _lado1 + _lado2 + _lado3;
  }

  double calcularArea() {
    double s = calcularPerimetro() / 2;
    return sqrt(s * (s - _lado1) * (s - _lado2) * (s - _lado3));
  }

  void desenharEsquerda() {
    int altura = _lado1.round();

    for (int i = 1; i <= altura; i++) {
      print(List.filled(i, _char).join());
    }
  }

  void desenharCentralizado() {
    int altura = _lado1.round();

    for (int i = 1; i <= altura; i++) {
      String espacos = ' ' * (altura - i);
      String chars = List.filled(2 * i - 1, _char).join();
      print(espacos + chars);
    }
  }

  void exibirResumo() {
    print('Lados: $_lado1, $_lado2, $_lado3');
    print('Perímetro: ${calcularPerimetro()}');
    print('Área: ${calcularArea()}');
  }
}