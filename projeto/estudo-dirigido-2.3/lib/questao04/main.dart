import '../lista_generica.dart';
import 'conta_corrente.dart';
import 'conta_poupanca.dart';
import 'conta_investimento.dart';
import 'conta.dart';

void main() {
  ContaPoupanca ana = ContaPoupanca('Ana', 1000);
  ContaCorrente bruno = ContaCorrente('Bruno', 1500);
  ContaInvestimento carla = ContaInvestimento('Carla', 5000);
  ContaPoupanca diego = ContaPoupanca('Diego', 2500);
  ContaCorrente elisa = ContaCorrente('Elisa', 800);

  ListaGenerica<ContaBancaria> contas = ListaGenerica();
  contas.adicionar(ana);
  contas.adicionar(bruno);
  contas.adicionar(carla);
  contas.adicionar(diego);
  contas.adicionar(elisa);

  for (var conta in contas.obterItens()) {
    print(conta);
  }

  print('\nAplicando rendimentos...\n');

  for (var conta in contas.obterItens()) {
    conta.aplicarRendimento();
    print(conta);
  }
}
