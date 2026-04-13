import './caixa.dart';

void main() {
  var caixa = Caixa(10);

  alterarValor(caixa);
  caixa.exibir(); // 999

  trocarCaixa(caixa);
  caixa.exibir(); // continua 999
}

// a) Por que alterarValor() modifica o objeto original?
// Pois é uma passagem por referencia, então altera o objeto de forma global.

// b) Por que trocarCaixa() não substitui a caixa criada no main? 
// Pois estamos reatribuindo uma variavel local.

// c) O que esse resultado mostra sobre a diferença entre alterar um objeto e reatribuir uma variável de referência? 
// quando um objeto é alterado, você altera ele internamente, fazendo mudanças de forma global;
// quando troca por referencia, só muda o ponteiro localmente.