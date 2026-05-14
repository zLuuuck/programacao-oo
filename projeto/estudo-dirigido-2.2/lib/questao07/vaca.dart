import 'animal.dart';

class Vaca extends Animal {
  Vaca(super.nome);

  @override
  void emitirSom() {
    print('muuu');
  }
}
