import 'dispositivo.dart';
import 'ligavel.dart';

class Notebook extends Dispositivo implements Ligavel {
  int _memoriaRam = 1;

  Notebook(super.marca, super.modelo, int memoriaRam) {
    this.memoriaRam = memoriaRam;
  }

  int get memoriaRam => _memoriaRam;

  set memoriaRam(int memoriaRam) {
    if (memoriaRam <= 0) {
      print('Memória RAM deve ser positiva. Mantida: $_memoriaRam GB');
      return;
    }
    _memoriaRam = memoriaRam;
  }

  @override
  void ligar() {
    print('Notebook $marca $modelo ligando com $memoriaRam GB de RAM.');
  }

  @override
  void desligar() {
    print('Notebook $marca $modelo desligando.');
  }

  @override
  String toString() {
    return 'Notebook | Marca: $marca | Modelo: $modelo | RAM: $memoriaRam GB';
  }
}
