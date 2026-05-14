import 'dispositivo.dart';

class Smartphone extends Dispositivo {
  String sistema;

  Smartphone(super.marca, super.modelo, this.sistema);

  @override
  void ligar() {
    print("Ligando smartphone com $sistema");
  }
}