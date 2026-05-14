import 'animal.dart';

class Gato extends Animal {
  Gato(super.nome);

  @override
  void emitirSom() {
    print('miau');
  }
}
