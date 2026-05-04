import 'dispositivo.dart';

class Smartphone extends Dispositivo {
  String sistema;

  Smartphone(String marca, String modelo, this.sistema)
      : super(marca, modelo);

  @override
  void ligar() {
    print("Ligando smartphone com $sistema");
  }
}