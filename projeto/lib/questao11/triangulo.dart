import 'dart:math';

class Triangulo {
  double lado1;
  double lado2;
  double lado3;
  String char;

  // Construtor com Parâmetro
  Triangulo(this.lado1, this.lado2, this.lado3, this.char);

  //Métodos
  double calcularPerimetro() {
    double perimetro = lado1 + lado2 + lado3;
    return perimetro;
  }

  double calcularArea() {
    double soma = calcularPerimetro() / 2;
    double area = sqrt(soma * (soma - lado1) * (soma - lado2) * (soma - lado3));
    return area;
  }

  void desenharEsquerda() {
    int altura = lado1.round();

    for (int i = 1; i <= altura; i++) {
      print(char * i);
    }
  }

  // Desenho centralizado
  void desenharCentralizado() {
    int altura = lado1.round();

    for (int i = 1; i <= altura; i++) {
      String espacos = ' ' * (altura - i);
      String chars = char * (2 * i - 1);
      print(espacos + chars);
    }
  }

  void exibirResumo() {
    print('Lados: $lado1, $lado2, $lado3');
    print('Perímetro: ${calcularPerimetro()}');
    print('Área: ${calcularArea()}');
  }
}
