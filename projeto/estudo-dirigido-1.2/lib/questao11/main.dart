import 'cliente.dart';
import 'endereco.dart';

void main() {
  var endereco = Endereco("Rua A", 100, "Curitiba");
  var cliente1 = Cliente("João", endereco);

  // criando cópia
  var cliente2 = Cliente.copia(cliente1);

  print("ANTES da alteração:\n");
  cliente1.exibir();
  cliente2.exibir();

  // alterando só o cliente2
  print("\nAlterando endereço do cliente2...\n");
  cliente2.alterarEndereco("Rua B", 200, "São Paulo");

  print("DEPOIS da alteração:\n");
  cliente1.exibir();
  cliente2.exibir();
}

// a)Por que a alteração no endereço de um cliente não modificou o endereço do outro?
// Porque foi criada uma nova instância de Endereco, evitando que os dois clientes compartilhem o mesmo objeto.

// b)O que foi feito nesse exercício para evitar o compartilhamento da mesma referência de Endereco? 
// A criação de um novo objeto Endereco dentro do construtor de cópia impediu o compartilhamento de referência.

// c)Qual é a diferença entre copiar a referência de um objeto e criar uma nova instância c/ os mesmos dados? 
// Copiar referência faz dois objetos apontarem para o mesmo local na memória. Criar uma nova instância gera objetos independentes com os mesmos dados.
