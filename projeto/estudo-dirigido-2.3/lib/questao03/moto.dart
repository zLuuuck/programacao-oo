import 'veiculo.dart';

class Moto extends Veiculo {
  int _cilindradas = 1;

  Moto(super.marca, super.modelo, super.ano, int cilindradas) {
    this.cilindradas = cilindradas;
  }

  int get cilindradas => _cilindradas;

  set cilindradas(int cilindradas) {
    if (cilindradas <= 0) {
      print('Cilindradas deve ser positivo. Mantido: $_cilindradas');
      return;
    }
    _cilindradas = cilindradas;
  }

  @override
  void exibirFicha() {
    print('Moto | Marca: $marca | Modelo: $modelo | Ano: $ano | Cilindradas: $cilindradas');
  }

  @override
  String toString() {
    return 'Moto | Marca: $marca | Modelo: $modelo | Ano: $ano | Cilindradas: $cilindradas';
  }
}
