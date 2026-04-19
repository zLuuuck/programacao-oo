class Carro {
  String _modelo;
  int _quilometragem;

  // Construtor com validação via setters
  Carro(String modelo, int quilometragem)
      : _modelo = '',
        _quilometragem = 0 {
    this.modelo = modelo;
    this.quilometragem = quilometragem;
  }

  // Getters
  String get modelo => _modelo;
  int get quilometragem => _quilometragem;

  // Setters com validação
  set modelo(String valor) {
    if (valor.trim().isEmpty) {
      print("Modelo inválido! Definido como 'Carro'");
      _modelo = "Carro";
    } else {
      _modelo = valor;
    }
  }

  set quilometragem(int valor) {
    if (valor < 0) {
      print("Quilometragem inválida! Definida como 0");
      _quilometragem = 0;
    } else {
      _quilometragem = valor;
    }
  }

  void adicionarKm(int km) {
    if (km > 0) {
      _quilometragem += km;
    } else {
      print("Valor de km deve ser positivo!");
    }
  }

  void exibirEstado() {
    print("======================");
    print("Modelo: $_modelo");
    print("Quilometragem: $_quilometragem km");
    print("======================");
  }
}