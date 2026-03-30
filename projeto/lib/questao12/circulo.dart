class Circulo {
  double raio;
  String cor;
<<<<<<< HEAD
  static const double pi = 3.14;

  Circulo(this.raio, this.cor) {
    if (raio <= 0) {
      print("Raio não pode ser menor ou igual a zero.");
    }
    if (cor.isEmpty){
      print("Cor não pode estar vazia.");
    }
  }

  double clacularArea(){
    return (pi * (raio*raio));
  }

  double calcularPerimetro(){
    return(2 * pi * raio);
  }

  void exibirResumo(){
    print("=======================");
    print("Cor: $cor");
    print("Raio: $raio");
    print("Diamentro: ${2*raio}");
    print("Perímetro: ${calcularPerimetro()}");
    print("Área: ${clacularArea()}");
    print("========================");
=======

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
>>>>>>> b8def7a6b2b3af73e5a1d9c90f020a455cb6059a
  }
}
