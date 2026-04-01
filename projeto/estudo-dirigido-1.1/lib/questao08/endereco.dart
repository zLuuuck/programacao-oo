class Endereco {
  String rua;
  int numero;
  String bairro;
  String cidade;
  String estado;
  String cep;

  Endereco(
    this.rua,
    this.numero,
    this.bairro,
    this.cidade,
    this.estado,
    this.cep,
  ) {
    if (rua.isEmpty) {
      print("Rua não pode ser vazia.");
    }
    if (bairro.isEmpty) {
      print("Bairro não pode ser vazia.");
    }
    if (cidade.isEmpty) {
      print("Cidade não pode ser vazia.");
    }
    if (estado.isEmpty) {
      print("Estado não pode ser vazia.");
    }
    if (numero <= 0) {
      print("Numero precisa ser maior que zero.");
    }
    if (cep.isEmpty || cep.length != 8) {
      print("cep não pode ser vazio e/ou deve seguir o formato XXXXXXXX.");
    }
  }

  String formatarCep(String cep) {
    // Remove caracteres não numéricos
    final numero = cep.replaceAll(RegExp(r'\D'), '');

    // O método substring() da classe String em Dart extrai uma parte de uma string,
    // definindo um índice inicial (inclusivo) e um índice final (exclusivo).
    // https://stackoverflow.com/questions/57186404/how-to-get-substring-between-two-strings-in-dart
    if (numero.length == 8) {
      return '${numero.substring(0, 5)}-${numero.substring(5)}';
    }
    return cep;
  }

  void exibirEndereco() {
    print("$rua, $numero - $bairro");
    print("$cidade - $estado");
    print(formatarCep(cep));
  }
}
