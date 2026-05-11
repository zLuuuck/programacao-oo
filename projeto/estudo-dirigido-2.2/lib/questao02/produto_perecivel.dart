import 'exibivel.dart';
import 'produto.dart';

class ProdutoPerecivel extends Produto implements Exibivel {
  String _dataValidade = 'Não informada';

  ProdutoPerecivel(String nome, double preco, String dataValidade)
    : super(nome, preco) {
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
    print('Produto perecível');
    print('Nome: $nome');
    print('Preço: R\$ $preco');
    print('Data de validade: $dataValidade');
  }
}
