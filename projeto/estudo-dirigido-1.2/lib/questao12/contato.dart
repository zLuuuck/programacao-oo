class Contato {
  String _nome;
  String _telefone;

  Contato(String nome, String telefone)
      : _nome = '',
        _telefone = '' {
    this.nome = nome;
    this.telefone = telefone;
  }

  // Getters
  String get nome => _nome;
  String get telefone => _telefone;

  // Setters com validação
  set nome(String valor) {
    if (valor.trim().isEmpty) {
      print("Nome inválido! Definindo como 'Sem nome'");
      _nome = 'Sem nome';
    } else {
      _nome = valor;
    }
  }

  set telefone(String valor) {
    if (valor.trim().isEmpty) {
      print("Telefone inválido! Definindo como '(00) 0000-0000'");
      _telefone = '(00) 0000-0000';
    } else {
      _telefone = valor;
    }
  }
}