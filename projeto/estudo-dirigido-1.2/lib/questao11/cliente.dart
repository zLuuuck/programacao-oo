import 'endereco.dart';

class Cliente {
  String _nome;
  Endereco _endereco;

  Cliente(this._nome, this._endereco) {
    if (_nome.isEmpty){
      _nome = "Cliente";
    }
  }

  Cliente.copia(Cliente outro)
      : _nome = outro._nome,
        _endereco = Endereco(
          outro._endereco.rua,
          outro._endereco.numero,
          outro._endereco.cidade,
        );

  void exibir() {
    print("======================");
    print("Nome: $_nome");
    _endereco.exibir();
    print("======================");
  }

  void alterarEndereco(String rua, int numero, String cidade) {
    _endereco = Endereco(rua, numero, cidade);
  }
}