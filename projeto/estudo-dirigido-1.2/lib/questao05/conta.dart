class Conta {
  String _numero;
  String _titular;
  double _saldo;

  // Construtores nomeados (ambos chamam os setters para validar os dados)
  Conta.bancaria(String numero, String titular)
      : _numero = numero,
        _titular = titular,
        _saldo = 0 {
    // Aplica as validações via setters
    this.numero = numero;
    this.titular = titular;
  }

  Conta.vip(String numero, String titular, double saldoInicial)
      : _numero = numero,
        _titular = titular,
        _saldo = saldoInicial {
    this.numero = numero;
    this.titular = titular;
    this.saldo = saldoInicial;
  }

  // Getters e Setters com validações
  String get numero => _numero;
  set numero(String valor) {
    if (valor.isEmpty) {
      print("Número inválido! Definido como '000'");
      _numero = "000";
    } else {
      _numero = valor;
    }
  }

  String get titular => _titular;
  set titular(String valor) {
    if (valor.isEmpty) {
      print("Titular inválido! Definido como 'Cliente'");
      _titular = "Cliente";
    } else {
      _titular = valor;
    }
  }

  double get saldo => _saldo;
  set saldo(double valor) {
    if (valor < 0) {
      print("Saldo inválido! Definido como 0");
      _saldo = 0;
    } else {
      _saldo = valor;
    }
  }

  void depositar(double valor) {
    if (valor <= 0) {
      print("Depósito inválido!");
      return;
    }
    _saldo += valor;
    print("Depósito de R\$ $valor realizado!");
  }

  void sacar(double valor) {
    if (valor <= 0) {
      print("Saque inválido!");
      return;
    }
    if (valor > _saldo) {
      print("Saldo insuficiente!");
      return;
    }
    _saldo -= valor;
    print("Saque de R\$ $valor realizado!");
  }

  void exibirResumo() {
    print("======================");
    print("Conta: $_numero");
    print("Titular: $_titular");
    print("Saldo: R\$ $_saldo");
    print("======================");
  }
}