class Endereco {
  String _rua;
  int _numero;
  String _cidade;

  Endereco(this._rua, this._numero, this._cidade) {
    if (_rua.isEmpty) _rua = "Rua";
    if (_numero <= 0) _numero = 1;
    if (_cidade.isEmpty) _cidade = "Cidade";
  }

  // 👇 GETTERS (solução)
  String get rua => _rua;
  int get numero => _numero;
  String get cidade => _cidade;

  void exibir() {
    print("$_rua, $_numero - $_cidade");
  }
}