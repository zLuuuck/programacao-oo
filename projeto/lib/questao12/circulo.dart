class Circulo {
  double raio;
  String cor;

  static const double PI = 3.14;

  Circulo(this.raio, this.cor) {
    if (raio <= 0) {
      print("Raio inválido! Definido como 1");
      raio = 1;
    }

    if (cor.isEmpty) {
      print("Cor não pode ser vazia! Definida como 'Sem cor'");
      cor = "Sem cor";
    }
  }

  double calcularArea() {
    return PI * raio * raio;
  }

  double calcularPerimetro() {
    return 2 * PI * raio;
  }

  void exibirResumo() {
    print("Raio: $raio");
    print("Cor: $cor");
    print("Área: ${calcularArea()}");
    print("Perímetro: ${calcularPerimetro()}");
    print("----------------------");
  }
}
