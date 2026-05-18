import 'pessoa.dart';

class Coordenador extends Pessoa {
  String _area = 'Não informada';
  int _tempoExperiencia = 0;

  Coordenador(super.nome, super.idade, String area, int tempoExperiencia) {
    this.area = area;
    this.tempoExperiencia = tempoExperiencia;
  }

  String get area => _area;

  set area(String area) {
    if (area.trim().isEmpty) {
      print('Área não pode ser vazia. Mantida: $_area');
      return;
    }
    _area = area;
  }

  int get tempoExperiencia => _tempoExperiencia;

  set tempoExperiencia(int tempoExperiencia) {
    if (tempoExperiencia < 0) {
      print('Tempo de experiência não pode ser negativo. Mantido: $_tempoExperiencia');
      return;
    }
    _tempoExperiencia = tempoExperiencia;
  }

  @override
  void exibirDados() {
    print('Coordenador | Nome: $nome | Idade: $idade | Área: $area | Experiência: $tempoExperiencia anos');
  }

  @override
  String toString() {
    return 'Coordenador | Nome: $nome | Idade: $idade | Área: $area | Experiência: $tempoExperiencia anos';
  }
}
