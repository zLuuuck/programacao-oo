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