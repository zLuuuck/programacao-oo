class Personagem {
  String _nome;
  int _vida;
  int _energia;

  Personagem(this._nome, this._vida, this._energia) {
    if (_nome.isEmpty) _nome = "Personagem";
    if (_vida < 0) _vida = 0;
    if (_energia < 0) _energia = 0;
  }

  void exibirEstado() {
    print("======================");
    print("Nome: $_nome");
    print("Vida: $_vida");
    print("Energia: $_energia");
    print("======================");
  }

  void alterarVida(int valor) {
    _vida = valor;
  }
}