class Circulo {
  double raio;
  String cor;
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
  }

}