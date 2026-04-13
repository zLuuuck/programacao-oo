import 'carro.dart';

class Oficina {
  void revisar(Carro carro) {
    print("Carro em revisão...");

    // simula um teste de rodagem
    carro.adicionarKm(100);

    print("Revisão concluída!\n");
  }
}