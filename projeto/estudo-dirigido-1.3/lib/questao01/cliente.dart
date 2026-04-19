class Cliente {
  String _nome;
  String _email;
  double _saldoCarteira;
  bool _ativo;

  Cliente(String nome, String email, double saldo, bool ativo)
    : _nome = '',
      _email = '',
      _saldoCarteira = 0,
      _ativo = false {
    this.nome = nome;
    this.email = email;
    this.saldoCarteira = saldo;
    this.ativo = ativo;
  }

  String get nome => _nome;
  String get email => _email;
  double get saldoCarteira => _saldoCarteira;
  bool get ativo => _ativo;

  set nome(String valor) {
    if (valor.trim().isEmpty) {
      print("Nome inválido");
    } else {
      _nome = valor;
    }
  }

  set email(String valor) {
    if (valor.trim().isEmpty) {
      print("Email inválido");
    } else {
      _email = valor;
    }
  }

  set saldoCarteira(double valor) {
    if (valor < 0) {
      print("Saldo inválido");
    } else {
      _saldoCarteira = valor;
    }
  }

  set ativo(bool valor) {
    _ativo = valor;
  }

  void ativar() {
    _ativo = true;
  }

  void desativar() {
    _ativo = false;
  }

  void adicionarSaldo(double valor) {
    if (_ativo == false) {
      print(
        "Usuário desativado; Não pode fazer transições em uma conta desativada",
      );
    }
    if (valor > 0) {
      _saldoCarteira += valor;
    }
  }

  void debitarSaldo(double valor) {
    if (_ativo == false) {
      print(
        "Usuário desativado; Não pode fazer transições em uma conta desativada",
      );
    }
    if (valor <= _saldoCarteira) {
      _saldoCarteira -= valor;
    }
  }

  void exibirCliente() {
    print(
      "Nome: $_nome | Email: $_email | Saldo: $_saldoCarteira | Ativo: $_ativo",
    );
  }
}
