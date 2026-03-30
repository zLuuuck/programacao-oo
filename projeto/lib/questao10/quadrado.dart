class Quadrado {
  double lado;
  String caractere;

  Quadrado(this.lado, this.caractere) {
    if (lado <= 0) {
      print("O lado deve ser maior que zero");
    }
    if (caractere.isEmpty || caractere.length != 1) {
      print("Somente um caractere");
    }
  }

  double calcularArea() {
    return lado * lado;
  }

  double calcularPerimetro() {
    return 4 * lado;
  }

  void desenhar() {
    int l = lado.toInt();

    for (int i = 0; i < l; i++) {
      print(caractere * l);
    }
  }

  void exibirResumo() {
    print("Lado: $lado");
    print("Área: ${calcularArea()}");
    print("Perímetro: ${calcularPerimetro()}");
  }

  void comparaQuadrado(Quadrado outro) {
    if (lado == outro.lado){
      print("Quadrados são iguais");
    } else {
      print("Quadrados diferentes");
    }
  }
}