abstract class Animal {
  String _nome = 'Não informado';

  Animal(String nome) {
    this.nome = nome;
  }

  String get nome => _nome;

  set nome(String nome) {
    if (nome.trim().isEmpty) {
      print('Nome do animal não pode ser vazio. Mantido: $_nome');
      return;
    }

    _nome = nome;
  }

  void emitirSom();
}
