import './retangulo.dart';

void main() {
  var r1 = Retangulo(5.0, 3.0);
  var r2 = Retangulo.vazio();
  var r3 = Retangulo.quadrado(4.0);
  r1.exibirDados();
  r2.exibirDados();
  r3.exibirDados();
}
