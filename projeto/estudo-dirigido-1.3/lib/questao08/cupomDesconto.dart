class CupomDesconto {
  String _codigo;
  double _percentual;
  bool _ativo;

  CupomDesconto(String codigo, double percentual, bool ativo)
      : _codigo = '',
        _percentual = 0,
        _ativo = false {
    this.codigo = codigo;
    this.percentual = percentual;
    this.ativo = ativo;
  }

  String get codigo => _codigo;
  double get percentual => _percentual;
  bool get ativo => _ativo;

  set codigo(String valor) {
    if (valor.trim().isEmpty) {
      print("Código inválido");
    } else {
      _codigo = valor;
    }
  }

  set percentual(double valor) {
    if (valor >= 0 && valor <= 100) {
      _percentual = valor;
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

  double calcularDesconto(double valor) {
    return valor * (_percentual / 100);
  }

  void exibirCupom() {
    print("Cupom: $_codigo | %: $_percentual | Ativo: $_ativo");
  }
}