abstract class Pedido {
  String _codigo = 'Sem código';
  double _valorTotal = 0;

  Pedido(String codigo, double valorTotal) {
    this.codigo = codigo;
    this.valorTotal = valorTotal;
  }

  String get codigo => _codigo;

  set codigo(String codigo) {
    if (codigo.trim().isEmpty) {
      print('Código não pode ser vazio. Mantido: $_codigo');
      return;
    }

    _codigo = codigo;
  }

  double get valorTotal => _valorTotal;

  set valorTotal(double valorTotal) {
    if (valorTotal < 0) {
      print('Valor total não pode ser negativo. Mantido: R\$ $_valorTotal');
      return;
    }

    _valorTotal = valorTotal;
  }

  void exibirPedido();
}
