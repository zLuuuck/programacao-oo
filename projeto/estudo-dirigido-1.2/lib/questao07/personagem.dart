class Personagem {
  String _nome;
  int _vida;
  int _energia;

  // Construtor com parâmetros (chama os setters para validar)
  Personagem(String nome, int vida, int energia)
      : _nome = '',
        _vida = 0,
        _energia = 0 {
    this.nome = nome;
    this.vida = vida;
    this.energia = energia;
  }

  // Getters
  String get nome => _nome;
  int get vida => _vida;
  int get energia => _energia;

  // Setters com validações
  set nome(String valor) {
    if (valor.trim().isEmpty) {
      print("Nome inválido! Definido como 'Personagem'");
      _nome = "Personagem";
    } else {
      _nome = valor;
    }
  }

  set vida(int valor) {
    if (valor < 0) {
      print("Vida inválida! Definida como 0");
      _vida = 0;
    } else {
      _vida = valor;
    }
  }

  set energia(int valor) {
    if (valor < 0) {
      print("Energia inválida! Definida como 0");
      _energia = 0;
    } else {
      _energia = valor;
    }
  }

  void alterarVida(int valor) {
    this.vida = valor; // delega para o setter
  }

  void exibirEstado() {
    print("======================");
    print("Nome: $_nome");
    print("Vida: $_vida");
    print("Energia: $_energia");
    print("======================");
  }
}