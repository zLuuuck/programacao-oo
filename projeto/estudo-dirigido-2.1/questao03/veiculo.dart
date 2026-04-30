class Veiculo {
  String _marca;
  String _modelo;
  int _ano;

  Veiculo(this._marca, this._modelo, this._ano);

  void exibirFicha() {
    print('Marca: $_marca');
    print('Modelo: $_modelo');
    print('Ano: $_ano');
  }
}

class Carro extends Veiculo {
  int _numeroPortas;

  Carro(String _marca, String _modelo, int _ano, this._numeroPortas) : super(_marca, _modelo, _ano);

  @override
  void exibirFicha() {
    super.exibirFicha();
    print('Número de Portas: $_numeroPortas');
  }
}