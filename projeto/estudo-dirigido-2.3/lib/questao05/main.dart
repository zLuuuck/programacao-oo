import '../lista_generica.dart';
import 'aluno.dart';
import 'coordenador.dart';
import 'pessoa.dart';
import 'professor.dart';

void main() {
  ListaGenerica<Pessoa> pessoas = ListaGenerica<Pessoa>();

  pessoas.adicionar(Aluno('Ana', 19, 'A001', 'ADS'));
  pessoas.adicionar(Aluno('Bruno', 22, 'A002', 'Engenharia de Software'));
  pessoas.adicionar(Professor('Carla', 38, 'POO', 2000.00));
  pessoas.adicionar(Professor('Diego', 41, 'Banco de Dados', 1900.00));
  pessoas.adicionar(Coordenador('Elisa', 45, 'Tecnologia', 15));

  print('--- Impressão das pessoas ---');
  pessoas.imprimirItens();

  print('\n--- Dados das pessoas ---');
  for (var pessoa in pessoas.obterItens()) {
    pessoa.exibirDados();
  }
}
