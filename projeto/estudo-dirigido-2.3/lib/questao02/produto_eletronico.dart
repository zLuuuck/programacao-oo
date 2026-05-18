import 'exibivel.dart';
import 'produto.dart';

class ProdutoEletronico extends Produto implements Exibivel {
  int _garantiaMeses = 0;

  ProdutoEletronico(super.nome, super.preco, int garantiaMeses) {
    this.garantiaMeses = garantiaMeses;
  }

  int get garantiaMeses => _garantiaMeses;

  set garantiaMeses(int garantiaMeses) {
    if (garantiaMeses < 0) {
      print('Garantia não pode ser negativa. Mantida: $_garantiaMeses meses');
      return;
    }
    _garantiaMeses = garantiaMeses;
  }

  @override
  void exibir() {
    print('Produto Eletrônico | Nome: $nome | Preço: R\$ ${preco.toStringAsFixed(2)} | Garantia: $garantiaMeses meses');
  }

  @override
  String toString() {
    return 'Produto Eletrônico | Nome: $nome | Preço: R\$ ${preco.toStringAsFixed(2)} | Garantia: $garantiaMeses meses';
  }
}
