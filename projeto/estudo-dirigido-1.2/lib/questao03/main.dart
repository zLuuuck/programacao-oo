import 'aluno.dart';

void main() {
  var a1 = Aluno(ra: 1, nome: "Carlos", notaFinal: 7.5);
  var a2 = Aluno(ra: 2, nome: "Ana", notaFinal: 5.0);
  var a3 = Aluno(ra: 3, nome: "João", notaFinal: 9.0);

  a1.exibirBoletim();
  a2.exibirBoletim();
  a3.exibirBoletim();
}