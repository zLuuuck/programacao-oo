class ContaBancaria {
  String _titular = 'Titular Desconhecido';
  double _saldo = 0;

  ContaBancaria(String titular, double saldo) {
    this.titular = titular;
    this.saldo = saldo;
  }

  set saldo(double valor) {
    if (valor >= 0) {
      _saldo = valor;
    } else {
      print("O saldo não pode ser negativo. Mantido valor padrão de R\$ 0.");
      return;
    }
  }

  set titular(String nome) {
    if (nome.isNotEmpty) {
      _titular = nome;
    } else {
      print(
        "O nome do titular não pode ser vazio. Mantido valor padrão de 'Titular Desconhecido'.",
      );
      return;
    }
  }

  double get saldo => _saldo;
  String get titular => _titular;

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      print("Depósito de R\$ $valor realizado. Saldo atual: R\$ $_saldo");
    } else {
      print("O valor do depósito deve ser positivo.");
      return;
    }
  }

  void sacar(double valor) {
    if (valor > 0) {
      if (valor <= _saldo) {
        _saldo -= valor;
        print("Saque de R\$ $valor realizado. Saldo atual: R\$ $_saldo");
      } else {
        print("Saldo insuficiente para o saque.");
        return;
      }
    } else {
      print("O valor do saque deve ser positivo.");
      return;
    }
  }

  void exibirSaldo() {
    print("Titular: $_titular");
    print("Saldo: R\$ $_saldo");
  }
}

class ContaPoupanca extends ContaBancaria {
  final double _taxaRendimento = 1.0; 

  ContaPoupanca(super.titular, super.saldo);

  double get taxaRendimento => _taxaRendimento;

  void aplicarRendimento() {
    double rendimento = saldo * (_taxaRendimento / 100);
    saldo = saldo + rendimento;
    print("Rendimento de $_taxaRendimento% aplicado. Saldo atual: R\$ $saldo");
  }

  @override
  void exibirSaldo() {
    super.exibirSaldo();
    print("Taxa de Rendimento: $_taxaRendimento%");
  }
}

class ContaCorrente extends ContaBancaria {
  final double _taxaRendimento = 5.0; 

  ContaCorrente(super.titular, super.saldo);

  double get taxaRendimento => _taxaRendimento;

  void aplicarRendimento() {
    double rendimento = saldo * (_taxaRendimento / 100);
    saldo = saldo + rendimento;
    print("Rendimento de $_taxaRendimento% aplicado. Saldo atual: R\$ $saldo");
  }

  @override
  void exibirSaldo() {
    super.exibirSaldo();
    print("Taxa de Rendimento: $_taxaRendimento%");
  }
}