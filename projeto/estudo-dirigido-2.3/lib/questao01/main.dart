import '../lista_generica.dart';
import 'funcionario.dart';
import 'funcionario_comum.dart';
import 'gerente.dart';

void main() {
  ListaGenerica<Funcionario> funcionarios = ListaGenerica<Funcionario>();

  funcionarios.adicionar(FuncionarioComum('Ana', 2500.00));
  funcionarios.adicionar(FuncionarioComum('Bruno', 3200.00));
  funcionarios.adicionar(Gerente('Carla', 7000.00, 'Financeiro'));
  funcionarios.adicionar(FuncionarioComum('Diego', 2800.00));
  funcionarios.adicionar(Gerente('Elisa', 8500.00, 'Tecnologia'));

  print('--- Impressão dos funcionários ---');
  funcionarios.imprimirItens();

  print('\n--- Bônus dos funcionários ---');
  for (var funcionario in funcionarios.obterItens()) {
    print('Bônus de ${funcionario.nome}: R\$ ${funcionario.calcularBonus().toStringAsFixed(2)}');
  }
}
