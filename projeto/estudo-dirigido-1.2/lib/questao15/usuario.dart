import 'conta.dart';

class Usuario {
  String _nome;
  Conta _conta;

  Usuario(this._nome, this._conta) {
    if (_nome.isEmpty) _nome = "Usuário";
  }

  void depositar(double valor) {
    print("$_nome depositando...");
    _conta.depositar(valor);
  }

  void sacar(double valor) {
    print("$_nome sacando...");
    _conta.sacar(valor);
  }

  void verSaldo() {
    print("$_nome vendo saldo:");
    _conta.exibirSaldo();
    print("");
  }
}