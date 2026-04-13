import './produto.dart';

void main() {
  var p = Produto('Caneta', 2.5, 100);
  p.exibirFicha();
  p.vender(10);
  p.repor(5);
  print('Após vender 10 e repor 5:');
  p.exibirFicha();
}
