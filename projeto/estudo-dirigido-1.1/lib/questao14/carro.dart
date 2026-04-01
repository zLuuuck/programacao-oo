import 'motor.dart';

class Carro {
  String modelo;
  Motor motor;

  Carro(this.modelo, this.motor) {
    if (modelo.isEmpty) {
      print("Modelo inválido! Definido como 'Carro'");
    }
  }

  void exibirCarro() {
    print("===== Carro =====");
    print("Modelo: $modelo");
    motor.exibirMotor();
    print("----------------------");
  }
}