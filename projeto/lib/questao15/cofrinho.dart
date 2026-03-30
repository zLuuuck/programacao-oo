class Cofrinho {
  double saldo;
  int quantidadeDepositos;

  Cofrinho(this.saldo) : quantidadeDepositos = 0 {
    if (saldo < 0) {
      print("Saldo inicial inválido! Definido como 0");
      saldo = 0;
    }
  }

  void depositar(double valor) {
    if (valor <= 0) {
      print("Depósito inválido!");
      return;
    }

    saldo += valor;
    quantidadeDepositos++;
  }

  void quebrar() {
    print("Total acumulado: $saldo");
    saldo = 0;
  }

  void exibirSaldo() {
    print("Saldo: $saldo");
    print("Quantidade de depósitos: $quantidadeDepositos");
  }
}