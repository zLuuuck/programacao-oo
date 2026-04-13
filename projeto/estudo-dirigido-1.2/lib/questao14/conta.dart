class Conta {
  String _titular;
  double _saldo;

  Conta(this._titular, this._saldo);

  double get saldo => saldo;

  set saldo(saldo){
    _saldo = saldo;
  }

  void exibir(){
    print("Titular: $_titular | Saldo: $_saldo");
  }
}