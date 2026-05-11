import 'funcionario.dart';
import 'funcionario_comum.dart';
import 'gerente.dart';

void main() {
  Funcionario funcionario = FuncionarioComum('Lucas', 3000);
  Funcionario gerente = Gerente('Darci', 5000, 'Vendas');

  funcionario.exibirDados();
  print('');
  gerente.exibirDados();
}
