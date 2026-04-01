import 'quadrado.dart';

void main() {
  var q1 = Quadrado(3, '*');
  var q2 = Quadrado(3, '*');
  var q3 = Quadrado(4, '*');
  var q4 = Quadrado(5, '*');

  q1.exibirResumo();
  q1.desenhar();
  q2.exibirResumo();
  q2.desenhar();
  q1.comparaQuadrado(q2);

  q3.exibirResumo();
  q3.desenhar();
  q4.exibirResumo();
  q4.desenhar();
  q4.comparaQuadrado(q3);
}
