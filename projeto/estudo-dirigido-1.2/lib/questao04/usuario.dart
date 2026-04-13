class Usuario {
  String _nome;
  String _email;
  String _apelido;

  Usuario(this._nome, this._email, [String? apelido])
      : _apelido = apelido ?? _nome;

  void exibirPerfil() {
    print("Nome: $_nome | Email: $_email | Apelido: $_apelido");
  }
}