abstract class Personagem {
  String _nome = 'Desconhecido';
  int _vida = 1;
  int _nivel = 1;

  Personagem(String nome, int vida, int nivel) {
    this.nome = nome;
    this.vida = vida;
    this.nivel = nivel;
  }

  String get nome => _nome;
  int get vida => _vida;
  int get nivel => _nivel;

  set nome(String valor) {
    if (valor.trim().isEmpty) {
      print('O nome não pode ser vazio. Mantido padrão "Desconhecido".');
      return;
    }
    _nome = valor;
  }

  set vida(int valor) {
    if (valor < 0) {
      print('Vida não pode ser negativa. Mantido valor anterior/padrão.');
      return;
    }
    _vida = valor;
  }

  set nivel(int valor) {
    if (valor < 1) {
      print('Nível mínimo é 1. Mantido valor anterior/padrão.');
      return;
    }
    _nivel = valor;
  }

  void receberDano(int dano) {
    if (dano < 0) {
      print('Dano não pode ser negativo. Ignorado.');
      return;
    }
    _vida -= dano;
    if (_vida < 0) _vida = 0;
    print('$nome recebeu $dano de dano. Vida atual: $_vida');
  }

  bool estaVivo() => _vida > 0;

  void exibirStatus();

  @override
  String toString() {
    return 'Personagem - nome: $nome | vida: $vida | nível: $nivel | tipo: $runtimeType';
  }
}
