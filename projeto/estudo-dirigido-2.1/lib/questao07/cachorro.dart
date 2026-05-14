import 'animal.dart';

class Cachorro extends Animal {
  Cachorro(super.nome);

  @override
  void emitirSom() {
    print("Au au");
  }
}