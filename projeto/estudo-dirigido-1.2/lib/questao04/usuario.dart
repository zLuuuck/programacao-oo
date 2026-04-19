class Usuario {
  String _nome;
  String _email;
  String _apelido;

  // Construtor com parâmetros posicionais: nome e email obrigatórios, apelido opcional
  Usuario(this._nome, this._email, [String? apelido])
      : _apelido = '' {
    // Usa os setters para aplicar validações
    this.nome = _nome;
    this.email = _email;
    this.apelido = apelido ?? _nome; // se apelido não for fornecido, usa o nome
  }

  // Getters
  String get nome => _nome;
  String get email => _email;
  String get apelido => _apelido;

  // Setters com validações
  set nome(String valor) {
    if (valor.trim().isEmpty) {
      print("Nome inválido! Definido como 'Usuário'");
      _nome = "Usuário";
    } else {
      _nome = valor;
    }
  }

  set email(String valor) {
    if (!valor.contains('@') || valor.trim().isEmpty) {
      print("E-mail inválido! Definido como 'usuario@exemplo.com'");
      _email = "usuario@exemplo.com";
    } else {
      _email = valor;
    }
  }

  set apelido(String valor) {
    if (valor.trim().isEmpty) {
      print("Apelido inválido! Definido como o próprio nome: $_nome");
      _apelido = _nome;
    } else {
      _apelido = valor;
    }
  }

  void exibirPerfil() {
    print("Nome: $_nome | Email: $_email | Apelido: $_apelido");
  }
}