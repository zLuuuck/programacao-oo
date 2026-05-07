class Veiculo {
  String _marca = 'Desconhecida';
  String _modelo = 'Desconhecido';
  int _ano = 0;

  Veiculo(String marca, String modelo, int ano) {
    this.marca = marca;
    this.modelo = modelo;
    this.ano = ano;
  }

  set marca(String marca) {
    if (marca.isNotEmpty) {
      _marca = marca;
    } else {
      print("Marca não pode ser vazia. Mantido padrão 'Desconhecida'.");
      return;
    }
  }

  set modelo(String modelo) {
    if (modelo.isNotEmpty) {
      _modelo = modelo;
    } else {
      print("Modelo não pode ser vazio. Mantido padrão 'Desconhecido'.");
      return;
    }
  }

  set ano(int ano) {
    if (ano > 0) {
      _ano = ano;
    } else {
      print("Ano deve ser positivo. Mantido padrão 0.");
      return;
    }
  }

  String get marca => _marca;
  String get modelo => _modelo;
  int get ano => _ano;

  void exibirFicha() {
    print('Marca: $_marca');
    print('Modelo: $_modelo');
    print('Ano: $_ano');
  }
}

class Carro extends Veiculo {
  int _numeroPortas = 4;   //valor padrão de 4 portas

  Carro(String marca, String modelo, int ano, int numeroPortas)
      : super(marca, modelo, ano) {
    this.numeroPortas = numeroPortas;
  }

  // ------------------ SETTER ------------------
  set numeroPortas(int portas) {
    if (portas > 0) {
      _numeroPortas = portas;
    } else {
      print("Número de portas deve ser positivo. Mantido padrão 4.");
      return;
    }
  }

  // ------------------ GETTER ------------------
  int get numeroPortas => _numeroPortas;

  @override
  void exibirFicha() {
    super.exibirFicha();
    print('Número de Portas: $_numeroPortas');
  }
}