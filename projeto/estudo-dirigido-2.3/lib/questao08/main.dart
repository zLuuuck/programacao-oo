import 'informativo.dart';
import 'livro_digital.dart';
import 'livro_fisico.dart';

void main() {
  Informativo digital = LivroDigital('POO', 'Autor Digital', 5.5);
  Informativo fisico = LivroFisico('Dart Básico', 'Autor Físico', 180);

  digital.exibirInformacoes();
  print('');
  fisico.exibirInformacoes();
}
