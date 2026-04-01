import 'produto.dart';

void main(){
  var produto1 = Produto(0001, 'PC', 5000, 10);
  produto1.exibirResumo();

  produto1.codigo = 002;
  produto1.nome = 'Teclado';
  produto1.precoUni = 199.99;
  produto1.quantidadeEstoque = 50;
  produto1.exibirResumo();

}