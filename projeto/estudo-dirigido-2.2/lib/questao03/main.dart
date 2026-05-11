import 'carro.dart';
import 'moto.dart';
import 'veiculo.dart';

void main() {
  Veiculo carro = Carro('Koenigsegg', 'Agera R', 2021, 2);
  Veiculo moto = Moto('Honda', 'CB 500F', 2024, 500);

  carro.exibirFicha();
  print('');
  moto.exibirFicha();
}
