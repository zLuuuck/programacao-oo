class CupomDesconto {
  String _codigo;
  double _percentual;
  bool _ativo;

  CupomDesconto(this._codigo, this._percentual, this._ativo) {
    if (_codigo.isEmpty) {
      print('Código não pode ser vazio.');
    }
    if (_percentual >= 0 && _percentual <= 100) {
      print("Percentual deve ser entre 0 e 100");
    }
  }

  String get codigo => _codigo;
  double get percentual => _percentual;
  bool get ativo => _ativo;

  set codigo(String valor) {
    if (valor.isNotEmpty) _codigo = valor;
  }

  set percentual(double valor) {
    if (valor >= 0 && valor <= 100) _percentual = valor;
  }

  set ativo(bool valor) => _ativo = valor;

  void ativar() => _ativo = true;
  void desativar() => _ativo = false;

  double calcularDesconto(double valor) {
    if (_ativo) {
      double desconto = _percentual / 100;
      double valorFinal = valor * (1 - desconto);
      return valorFinal;
    } else {
      return valor;
    }
  }

  void exibirCupom() {
    print('Cupom: $_codigo | Desconto: $_percentual% | Ativo: $_ativo');
  }
}
