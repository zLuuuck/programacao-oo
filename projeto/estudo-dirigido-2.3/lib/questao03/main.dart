import '../lista_generica.dart';
import 'caminhao.dart';
import 'carro.dart';
import 'moto.dart';
import 'veiculo.dart';

void main() {
  ListaGenerica<Veiculo> veiculos = ListaGenerica<Veiculo>();

  veiculos.adicionar(Carro('Toyota', 'Corolla', 2022, 4));
  veiculos.adicionar(Carro('Honda', 'Civic', 2021, 4));
  veiculos.adicionar(Moto('Yamaha', 'Fazer', 2023, 250));
  veiculos.adicionar(Moto('Honda', 'Biz', 2020, 125));
  veiculos.adicionar(Caminhao('Volvo', 'VM', 2019, 12));

  print('--- Impressão dos veículos ---');
  veiculos.imprimirItens();

  print('\n--- Fichas dos veículos ---');
  for (var veiculo in veiculos.obterItens()) {
    veiculo.exibirFicha();
  }
}
