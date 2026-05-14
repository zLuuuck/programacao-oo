import 'animal.dart';

class Passaro extends Animal {
  Passaro(super.nome);

  @override
  void emitirSom() {
    print("Piu piu");
  }
}