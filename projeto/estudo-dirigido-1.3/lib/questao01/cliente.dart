class Cliente {
  String _nome;
  String _email;
  double _saldoCarteira;
  bool _ativo;

  Cliente(this._nome, this._email, this._saldoCarteira, this._ativo) {
    if (_nome.isEmpty) {
      _nome = "Cliente";
    }
    if (_email.isEmpty) {
      _email = "email@email.com";
    }
    if (_saldoCarteira < 0) {
      _saldoCarteira = 0;
    }
  }

  // getters
  String get nome => _nome;
  String get email => _email;
  double get saldo => _saldoCarteira;
  bool get ativo => _ativo;

  // setters
  set nome(String valor) {
    if (valor.isNotEmpty) _nome = valor;
  }

  set email(String valor) {
    if (valor.isNotEmpty) _email = valor;
  }

  set saldo(double valor) {
    if (valor >= 0) _saldoCarteira = valor;
  }

  set ativo(bool valor) {
    _ativo = valor;
  }

  void ativar() => _ativo = true;
  void desativar() => _ativo = false;

  void adicionarSaldo(double valor) {
    if (valor > 0) _saldoCarteira += valor;
  }

  void debitarSaldo(double valor) {
    if (valor > 0 && valor <= _saldoCarteira) {
      _saldoCarteira -= valor;
    }
  }

  void exibirCliente() {
    print("Nome: $_nome | Email: $_email | Saldo: $_saldoCarteira | Ativo: $_ativo");
  }
}