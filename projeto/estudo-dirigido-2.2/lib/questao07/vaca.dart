import 'animal.dart';

class Vaca extends Animal {
  Vaca(String nome) : super(nome);

  @override
  void emitirSom() {
    print('muuu');
  }
}
