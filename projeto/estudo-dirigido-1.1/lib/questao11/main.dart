import 'triangulo.dart';

void main(){
  var triangulo1 = Triangulo(3, 4, 5, '*');
  var triangulo2 = Triangulo(30, 40, 50, '*');
  print('=== Triângulo 1 ===');
  triangulo1.exibirResumo();
  print('\nEsquerda:');
  triangulo1.desenharEsquerda();
  print('\nCentralizado:');
  triangulo1.desenharCentralizado();

  print('\n=== Triângulo 2 ===');
  triangulo2.exibirResumo();
  print('\nEsquerda:');
  triangulo2.desenharEsquerda();
  print('\nCentralizado:');
  triangulo2.desenharCentralizado();
}

