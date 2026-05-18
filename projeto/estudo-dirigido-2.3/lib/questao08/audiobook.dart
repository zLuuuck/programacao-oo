import 'informativo.dart';
import 'livro.dart';

class Audiobook extends Livro implements Informativo {
  int _duracaoMinutos = 0;

  Audiobook(super.titulo, super.autor, int duracaoMinutos) {
    this.duracaoMinutos = duracaoMinutos;
  }

  int get duracaoMinutos => _duracaoMinutos;

  set duracaoMinutos(int duracaoMinutos) {
    if (duracaoMinutos < 0) {
      print('Duração não pode ser negativa. Mantida: $_duracaoMinutos min');
      return;
    }
    _duracaoMinutos = duracaoMinutos;
  }

  @override
  void exibirInformacoes() {
    print('Audiobook | Título: $titulo | Autor: $autor | Duração: $duracaoMinutos min');
  }

  @override
  String toString() {
    return 'Audiobook | Título: $titulo | Autor: $autor | Duração: $duracaoMinutos min';
  }
}
