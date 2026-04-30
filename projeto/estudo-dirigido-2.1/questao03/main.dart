import 'veiculo.dart';

void main() {
  Veiculo veiculo = Veiculo('Toyota', 'Corolla', 2020);
  veiculo.exibirFicha();

  print('');

  Carro carro = Carro('Honda', 'Civic', 2021, 4);
  carro.exibirFicha();
}