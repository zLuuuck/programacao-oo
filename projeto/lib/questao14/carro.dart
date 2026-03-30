import 'motor.dart';

class Carro {
  String modelo;
  Motor motor;

  Carro(this.modelo, this.motor) {
    if (modelo.isEmpty) {
      print("Modelo inválido! Definido como 'Carro'");
      modelo = "Carro";
    }
  }

  void exibirCarro() {
    print("Modelo: $modelo");
    motor.exibirMotor();
    print("----------------------");
  }
}