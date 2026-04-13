import 'carro.dart';
import 'oficina.dart';

void main() {
  var carro = Carro("Civic", 50000);
  var oficina = Oficina();

  print("ANTES da revisão:\n");
  carro.exibirEstado();

  oficina.revisar(carro);

  print("DEPOIS da revisão:\n");
  carro.exibirEstado();
}