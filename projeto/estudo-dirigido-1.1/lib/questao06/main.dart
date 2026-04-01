import 'produto.dart';

void main(){
  var produto1 = Produto(0001, 'PC', 5000, 10);
  produto1.exibirResumo();

  
  produto1.codigoProduto = 002;
  produto1.nome = 'Teclado';
  produto1.precoUnitario = 199.99;
  produto1.qtdeEstoque = 50;
  produto1.exibirResumo();

}