import 'veiculo.dart';

class Carro extends Veiculo {
  int _quantidadePortas = 2;

  Carro(super.marca, super.modelo, super.ano, int quantidadePortas) {
    this.quantidadePortas = quantidadePortas;
  }

  int get quantidadePortas => _quantidadePortas;

  set quantidadePortas(int quantidadePortas) {
    if (quantidadePortas <= 0) {
      print('Quantidade de portas deve ser positiva. Mantida: $_quantidadePortas');
      return;
    }
    _quantidadePortas = quantidadePortas;
  }

  @override
  void exibirFicha() {
    print('Carro | Marca: $marca | Modelo: $modelo | Ano: $ano | Portas: $quantidadePortas');
  }

  @override
  String toString() {
    return 'Carro | Marca: $marca | Modelo: $modelo | Ano: $ano | Portas: $quantidadePortas';
  }
}
