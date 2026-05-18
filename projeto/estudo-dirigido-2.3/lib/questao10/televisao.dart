import 'dispositivo.dart';
import 'ligavel.dart';

class Televisao extends Dispositivo implements Ligavel {
  int _tamanhoPolegadas = 0;

  Televisao(super.marca, super.modelo, int tamanhoPolegadas) {
    this.tamanhoPolegadas = tamanhoPolegadas;
  }

  int get tamanhoPolegadas => _tamanhoPolegadas;

  set tamanhoPolegadas(int tamanhoPolegadas) {
    if (tamanhoPolegadas <= 0) {
      print('Tamanho deve ser positivo. Mantido: $_tamanhoPolegadas polegadas');
      return;
    }
    _tamanhoPolegadas = tamanhoPolegadas;
  }

  @override
  void ligar() {
    print('Televisão $marca $modelo ligando ($tamanhoPolegadas polegadas).');
  }

  @override
  void desligar() {
    print('Televisão $marca $modelo desligando.');
  }

  @override
  String toString() {
    return 'Televisão | Marca: $marca | Modelo: $modelo | Tamanho: $tamanhoPolegadas polegadas';
  }
}
