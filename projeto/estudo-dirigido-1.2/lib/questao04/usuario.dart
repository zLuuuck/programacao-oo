class Usuario {
  String _nome;
  String _email;
  String _apelido;

  Usuario(this._nome, this._email, [String? apelido]): _apelido='' { // feito com o chat para garantir inicialização do apelido
    if (apelido != null) {
      _apelido = apelido;
    } else {
      _apelido = _nome;
    }
  }

  void exibirPerfil() {
    print("Nome: $_nome | Email: $_email | Apelido: $_apelido");
  }
}