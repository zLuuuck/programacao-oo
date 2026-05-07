import 'animal.dart';

class Gato extends Animal {
  Gato(String nome) : super(nome);

  @override
  void emitirSom() {
    print("Miau");
  }
}