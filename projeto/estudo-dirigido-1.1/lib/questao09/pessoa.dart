import '../questao08/endereco.dart';

class Pessoa {
  String nome;
  int idade;
  String cpf;
  Endereco endereco;

  Pessoa(this.nome, this.idade, this.cpf, this.endereco) {
    if (nome.isEmpty) {
      print("Nome não pode ser vazio!");
    }

    if (idade < 0) {
      print("idade deve ser maior ou igual a zero.");
    }

    if (cpf.isEmpty || cpf.length < 11) {
      print(
        "CPF não pode ser vazio e/ou tem que ser maior que 11 (XXXXXXXXXXX).",
      );
    }
  }

  String formatarCpf(String cpf) {
    // Remove qualquer coisa que não seja número
    final numero = cpf.replaceAll(RegExp(r'\D'), '');

    if (numero.length == 11) {
      // Fatiamos a string nos pontos exatos:
      // 0 a 3 . 3 a 6 . 6 a 9 - 9 em diante
      return '${numero.substring(0, 3)}.${numero.substring(3, 6)}.${numero.substring(6, 9)}-${numero.substring(9)}';
    }

    // Retorna o original se não tiver os 11 dígitos
    return cpf;
  }

  void exibirPessoa() {
    print("==================================");
    print("Nome: $nome");
    print("Idade: $idade");
    print("Cpf: ${formatarCpf(cpf)}");
    endereco.exibirEndereco();
    print("==================================");
  }
}
