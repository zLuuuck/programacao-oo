import 'exibivel.dart';
import 'produto.dart';

class ProdutoPerecivel extends Produto implements Exibivel {
  String _dataValidade = 'Não informada';

  ProdutoPerecivel(super.nome, super.preco, String dataValidade) {
    this.dataValidade = dataValidade;
  }

  String get dataValidade => _dataValidade;

  set dataValidade(String dataValidade) {
    if (dataValidade.trim().isEmpty) {
      print('Data de validade não pode ser vazia. Mantida: $_dataValidade');
      return;
    }
    _dataValidade = dataValidade;
  }

  @override
  void exibir() {
    print('Produto Perecível | Nome: $nome | Preço: R\$ ${preco.toStringAsFixed(2)} | Validade: $dataValidade');
  }

  @override
  String toString() {
    return 'Produto Perecível | Nome: $nome | Preço: R\$ ${preco.toStringAsFixed(2)} | Validade: $dataValidade';
  }
}
