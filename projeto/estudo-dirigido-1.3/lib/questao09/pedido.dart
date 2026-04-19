import '../questao07/carrinho.dart';
import '../questao08/cupomDesconto.dart';

class Pedido {
  String _numero;
  Carrinho _carrinho;
  CupomDesconto _cupom;
  double _totalBruto;
  double _totalFinal;
  String _status;

  Pedido(String numero, Carrinho carrinho, CupomDesconto cupom)
      : _numero = '',
        _carrinho = carrinho,
        _cupom = cupom,
        _totalBruto = 0,
        _totalFinal = 0,
        _status = "aberto" {
    this.numero = numero;
  }

  set numero(String valor) {
    if (valor.trim().isNotEmpty) {
      _numero = valor;
    }
  }

  void fecharPedido() {
    _totalBruto = _carrinho.calcularTotal();

    if (_cupom.ativo) {
      double desconto = _cupom.calcularDesconto(_totalBruto);
      _totalFinal = _totalBruto - desconto;
    } else {
      _totalFinal = _totalBruto;
    }

    _status = "fechado";
  }

  void cancelarPedido() {
    _status = "cancelado";
  }

  void exibirResumoPedido() {
    print("Pedido: $_numero");
    print("Total bruto: $_totalBruto");
    print("Total final: $_totalFinal");
    print("Status: $_status");
  }
}