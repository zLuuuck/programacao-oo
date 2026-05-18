import 'animal.dart';

class Ovelha extends Animal {
  Ovelha(super.nome);

  @override
  void emitirSom() {
    print('béé');
  }
}
