import '../lista_generica.dart';
import 'animal.dart';
import 'cachorro.dart';
import 'gato.dart';
import 'ovelha.dart';
import 'passaro.dart';
import 'vaca.dart';

void main() {
  ListaGenerica<Animal> animais = ListaGenerica<Animal>();

  animais.adicionar(Cachorro('Rex'));
  animais.adicionar(Gato('Mimi'));
  animais.adicionar(Passaro('Piu'));
  animais.adicionar(Vaca('Mimosa'));
  animais.adicionar(Ovelha('Dolly'));

  print('--- Impressão dos animais ---');
  animais.imprimirItens();

  print('\n--- Sons dos animais ---');
  for (var animal in animais.obterItens()) {
    animal.emitirSom();
  }
}
