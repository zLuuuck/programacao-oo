import 'aluno.dart';
import 'pessoa.dart';
import 'professor.dart';

void main() {
  Pessoa aluno = Aluno('Carlos', 20, '123', 'ADS');
  Pessoa professor = Professor('Marina', 35, 'POO', 6500);

  aluno.exibirDados();
  print('');
  professor.exibirDados();
}
