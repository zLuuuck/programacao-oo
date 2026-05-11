import 'animal.dart';

class Passaro extends Animal {
  Passaro(String nome) : super(nome);

  @override
  void emitirSom() {
    print('piu piu');
  }
}
