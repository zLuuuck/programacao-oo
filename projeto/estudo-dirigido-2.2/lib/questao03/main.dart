import 'veiculo.dart';

void main() {
  Veiculo veiculo = Veiculo('Volkswagen', 'Fusca', 1998);
  veiculo.exibirFicha();

  print('');

  Carro carro = Carro('Koenigsegg', 'Agera R', 2021, 2);
  carro.exibirFicha();
}