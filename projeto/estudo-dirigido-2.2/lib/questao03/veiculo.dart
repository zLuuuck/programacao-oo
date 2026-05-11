abstract class Veiculo {
  String _marca = 'Não informada';
  String _modelo = 'Não informado';
  int _ano = 1;

  Veiculo(String marca, String modelo, int ano) {
    this.marca = marca;
    this.modelo = modelo;
    this.ano = ano;
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

  int get ano => _ano;

  set ano(int ano) {
    if (ano <= 0) {
      print('Ano deve ser positivo. Mantido: $_ano');
      return;
    }

    _ano = ano;
  }

  void exibirFicha();
}
