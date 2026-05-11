class Dispositivo {
  String _marca = 'Não informada';
  String _modelo = 'Não informado';

  Dispositivo(String marca, String modelo) {
    this.marca = marca;
    this.modelo = modelo;
  }

  String get marca => _marca;

  set marca(String marca) {
    if (marca.trim().isEmpty) {
      print('Marca não pode ser vazia. Mantida: $_marca');
      return;
    }

    _marca = marca;
  }

  String get modelo => _modelo;

  set modelo(String modelo) {
    if (modelo.trim().isEmpty) {
      print('Modelo não pode ser vazio. Mantido: $_modelo');
      return;
    }

    _modelo = modelo;
  }
}
