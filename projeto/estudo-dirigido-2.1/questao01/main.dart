import 'funcionario.dart';

void main() {
  Funcionario funcionario = Funcionario('Lucas', 3000.0);
  funcionario.exibirdados();

  print(''); 

  Gerente gerente = Gerente('Darci', 5000.0, 'Vendas');
  gerente.exibirdados();
  
}