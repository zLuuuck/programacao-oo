import 'dispositivo.dart';
import 'ligavel.dart';

class Smartphone extends Dispositivo implements Ligavel {
  String _sistemaOperacional = 'Não informado';

  Smartphone(String marca, String modelo, String sistemaOperacional)
    : super(marca, modelo) {
    this.sistemaOperacional = sistemaOperacional;
  }

  String get sistemaOperacional => _sistemaOperacional;

  set sistemaOperacional(String sistemaOperacional) {
    if (sistemaOperacional.trim().isEmpty) {
      print(
        'Sistema operacional não pode ser vazio. Mantido: $_sistemaOperacional',
      );
      return;
    }

    _sistemaOperacional = sistemaOperacional;
  }

  @override
  void ligar() {
    print('Smartphone $marca $modelo ligando com $sistemaOperacional.');
  }

  @override
  void desligar() {
    print('Smartphone $marca $modelo desligando.');
  }
}
