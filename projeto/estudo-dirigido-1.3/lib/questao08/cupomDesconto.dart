class CupomDesconto {
  String _codigo;
  double _percentual;
  bool _ativo;

  CupomDesconto(this._codigo, this._percentual, this._ativo)
      : assert(_codigo.isNotEmpty, 'Código não pode ser vazio'),
        assert(_percentual >= 0 && _percentual <= 100, 'Percentual entre 0 e 100');

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
    return _ativo ? valor * (1 - _percentual / 100) : valor;
  }

  void exibirCupom() {
    print('Cupom: $_codigo | Desconto: $_percentual% | Ativo: $_ativo');
  }
}