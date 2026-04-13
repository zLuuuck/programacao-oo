import '../questao07/carrinho.dart';
class Pedido {
  String _numero;
  Carrinho _carrinho;
  double _totalBruto;
  double _totalFinal;
  String _status;

  Pedido(this._numero, this._carrinho)
      : _totalBruto = 0,
        _totalFinal = 0,
        _status = "aberto" {
    if (_numero.isEmpty) _numero = "000";
  }

  void fecharPedido() {
    _totalBruto = _carrinho.calcularTotal();
    _totalFinal = _totalBruto;
    _status = "fechado";
  }

  void cancelarPedido() {
    _status = "cancelado";
  }

  void exibirResumoPedido() {
    print("Pedido: $_numero");
    print("Status: $_status");
    print("Total bruto: $_totalBruto");
    print("Total final: $_totalFinal");
  }
}