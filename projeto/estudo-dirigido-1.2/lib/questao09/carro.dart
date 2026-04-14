class Carro {
  String _modelo;
  int _quilometragem;

  Carro(this._modelo, this._quilometragem) {
    if (_modelo.isEmpty){
      _modelo = "Carro";
    }
    if (_quilometragem < 0) {
      _quilometragem = 0;
    }
  }

  void exibirEstado() {
    print("======================");
    print("Modelo: $_modelo");
    print("Quilometragem: $_quilometragem km");
    print("======================");
  }

  void adicionarKm(int km) {
    if (km > 0) {
      _quilometragem += km;
    }
  }
}