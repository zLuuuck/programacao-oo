import 'veiculo.dart';

class Moto extends Veiculo {
  int _cilindradas = 1;

  Moto(String marca, String modelo, int ano, int cilindradas)
    : super(marca, modelo, ano) {
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
    print('Moto');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano: $ano');
    print('Cilindradas: $cilindradas');
  }
}
