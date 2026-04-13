import 'pessoa.dart';
import 'carteira.dart';

void main() {
  var carteira = Carteira(100);

  Pessoa? p1 = Pessoa("João", carteira);
  Pessoa? p2 = p1;

  print("Estado inicial:\n");
  p1.exibir();

  print("\nAlterando saldo pela variável p2...\n");
  carteira.alterarSaldo(50);

  p1.exibir();

  print("\nDefinindo p1 como null...\n");
  p1 = null;

  print("p2 ainda existe:\n");
  p2.exibir();

  print("\nDefinindo p2 como null...\n");
  p2 = null;

  print("Agora não há mais referências para o objeto.");
}

// a)Por que a alteração feita na carteira por p2 também apareceu quando o objeto foi acessado por p1?
// Porque p1 e p2 referenciam o mesmo objeto na memória.

// b)Em termos conceituais, as variáveis p1 e p2 armazenam o objeto inteiro ou uma referência para ele? 
// Variáveis armazenam referências para objetos, não os objetos em si.

// c)Considerando o funcionamento de memória em linguagens orientadas a objetos, onde ficam as variáveis locais e onde ficam os objetos criados dinamicamente?
// As variáveis locais ficam na pilha de execução, enquanto os objetos criados dinamicamente ficam no heap.

// d)Em que momento os objetos Pessoa e Carteira passam a ficar elegíveis para o garbage collector?
// Quando não há mais referências para eles no código.