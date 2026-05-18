import 'veiculo.dart';

class Caminhao extends Veiculo {
  double _capacidadeCarga = 0;

  Caminhao(super.marca, super.modelo, super.ano, double capacidadeCarga) {
    this.capacidadeCarga = capacidadeCarga;
  }

  double get capacidadeCarga => _capacidadeCarga;

  set capacidadeCarga(double capacidadeCarga) {
    if (capacidadeCarga < 0) {
      print('Capacidade de carga não pode ser negativa. Mantida: $_capacidadeCarga');
      return;
    }
    _capacidadeCarga = capacidadeCarga;
  }

  @override
  void exibirFicha() {
    print('Caminhão | Marca: $marca | Modelo: $modelo | Ano: $ano | Capacidade de carga: ${capacidadeCarga.toStringAsFixed(1)} t');
  }

  @override
  String toString() {
    return 'Caminhão | Marca: $marca | Modelo: $modelo | Ano: $ano | Capacidade de carga: ${capacidadeCarga.toStringAsFixed(1)} t';
  }
}
