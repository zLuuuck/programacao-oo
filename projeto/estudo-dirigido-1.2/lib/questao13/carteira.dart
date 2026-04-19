class Carteira {
  double _saldo;

  // Construtor padrão com validação via setter
  Carteira(double saldo) : _saldo = 0 {
    this.saldo = saldo;   // chama o setter
  }

  // Getter
  double get saldo => _saldo;

  // Setter com validação
  set saldo(double valor) {
    if (valor < 0) {
      print("Saldo inválido! Definido como 0");
      _saldo = 0;
    } else {
      _saldo = valor;
    }
  }

  void alterarSaldo(double valor) {
    this.saldo = valor;   // delega para o setter
  }

  void exibir() {
    print("Saldo: $_saldo");
  }
}