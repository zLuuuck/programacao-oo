import 'funcionario.dart';

void main() {
  Funcionario funcionario = Funcionario('João', 3000.0);
  funcionario.exibirdados();

  print(''); 

  Gerente gerente = Gerente('Maria', 5000.0, 'Vendas');
  gerente.exibirdados();
  
}