import 'dispositivo.dart';
import 'ligavel.dart';

class Notebook extends Dispositivo implements Ligavel {
  int _memoriaRam = 1;

  Notebook(String marca, String modelo, int memoriaRam) : super(marca, modelo) {
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
}
