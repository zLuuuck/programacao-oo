class Endereco {
  String _rua;
  int _numero;
  String _cidade;

  Endereco(String rua, int numero, String cidade)
      : _rua = '',
        _numero = 1,
        _cidade = '' {
    this.rua = rua;
    this.numero = numero;
    this.cidade = cidade;
  }

  // Getters
  String get rua => _rua;
  int get numero => _numero;
  String get cidade => _cidade;

  // Setters com validação
  set rua(String valor) {
    if (valor.trim().isEmpty) {
      print("Rua inválida! Definindo como 'Rua'");
      _rua = 'Rua';
    } else {
      _rua = valor;
    }
  }

  set numero(int valor) {
    if (valor <= 0) {
      print("Número inválido! Definindo como 1");
      _numero = 1;
    } else {
      _numero = valor;
    }
  }

  set cidade(String valor) {
    if (valor.trim().isEmpty) {
      print("Cidade inválida! Definindo como 'Cidade'");
      _cidade = 'Cidade';
    } else {
      _cidade = valor;
    }
  }

  void exibir() {
    print("$_rua, $_numero - $_cidade");
  }
}