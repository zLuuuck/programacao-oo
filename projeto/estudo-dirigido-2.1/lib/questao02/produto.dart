class Produto {
  String _nome = 'Produto sem nome';
  double _preco = 0;

  Produto(String nome, double preco) {
    this.nome = nome;
    this.preco = preco;
  }

  set nome(String nome) {
    if (nome.isNotEmpty) {
      _nome = nome;
    } else {
      print("Nome do produto não pode ser vazio. Mantido padrão 'Produto sem nome'.");
      return;
    }
  }

  set preco(double valor) {
    if (valor >= 0) {
      _preco = valor;
    } else {
      print("Preço não pode ser negativo. Mantido R\$ 0.");
      return;
    }
  }

  String get nome => _nome;
  double get preco => _preco;

  void exibirDados() {
    print('Nome: $_nome');
    print('Preço: R\$$_preco');
  }
}

class ProdutoPerecivel extends Produto {
  String _dataValidade = 'Não informada';

  ProdutoPerecivel(String nome, double preco, String dataValidade)
      : super(nome, preco) {
    this.dataValidade = dataValidade;   // setter valida
  }

  set dataValidade(String data) {
    if (data.isNotEmpty) {
      _dataValidade = data;
    } else {
      print("Data de validade não pode ser vazia. Mantido padrão 'Não informada'.");
      return;
    }
  }

  String get dataValidade => _dataValidade;

  @override
  void exibirDados() {
    super.exibirDados();
    print('Data de Validade: $_dataValidade');
  }
}