import 'pessoa.dart';
import '../questao08/endereco.dart';

void main() {
  var end1 = Endereco(
    "Rua das Flores",
    100,
    "Centro",
    "Curitiba",
    "PR",
    "80000000",
  );

  var end2 = Endereco(
    "Av. Paulista",
    1500,
    "Bela Vista",
    "São Paulo",
    "SP",
    "01310000",
  );

  var end3 = Endereco(
    "Rua da Praia",
    50,
    "Centro",
    "Florianópolis",
    "SC",
    "88000000",
  );

  var p1 = Pessoa("Lucas", 18, "12345678901", end1);
  var p2 = Pessoa("Ana", 25, "98765432100", end2);
  var p3 = Pessoa("Carlos", 30, "11122233344", end3);

  print("=== Pessoa 1 ===");
  p1.exibirPessoa();

  print("\n=== Pessoa 2 ===");
  p2.exibirPessoa();

  print("\n=== Pessoa 3 ===");
  p3.exibirPessoa();

}