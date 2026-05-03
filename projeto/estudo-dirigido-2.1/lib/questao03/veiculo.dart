class Veiculo {
  final String _marca;
  final String _modelo;
  final int _ano;

  Veiculo(this._marca, this._modelo, this._ano);

  void exibirFicha() {
    print('Marca: $_marca');
    print('Modelo: $_modelo');
    print('Ano: $_ano');
  }
}

class Carro extends Veiculo {
  final int _numeroPortas;

  Carro(super._marca, super._modelo, super._ano, this._numeroPortas);

  @override
  void exibirFicha() {
    super.exibirFicha();
    print('Número de Portas: $_numeroPortas');
  }
}