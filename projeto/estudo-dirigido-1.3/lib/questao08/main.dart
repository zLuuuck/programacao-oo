import './cupomDesconto.dart';

void main(){
  print('\n--- QUESTÃO 8 ---');
  var cupom = CupomDesconto('DESC20', 20, true);
  cupom.exibirCupom();
  print('Desconto sobre 100: ${cupom.calcularDesconto(100)}');
}