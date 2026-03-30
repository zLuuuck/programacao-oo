class Motor {
  int potencia;
  String tipo;

  Motor(this.potencia, this.tipo) {
    if (potencia <= 0) {
      print("Potência inválida! Definida como 100");
      potencia = 100;
    }

    if (tipo.isEmpty) {
      print("Tipo inválido! Definido como 'Desconhecido'");
      tipo = "Desconhecido";
    }
  }

  void exibirMotor() {
    print("Potência: $potencia");
    print("Tipo: $tipo");
  }
}