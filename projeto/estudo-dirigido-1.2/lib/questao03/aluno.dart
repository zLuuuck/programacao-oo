class Aluno {
  int _ra;
  String _nome;
  double _notaFinal;

  // construtor com parâmetros nomeados obrigatórios
  Aluno({
    required int ra,
    required String nome,
    required double notaFinal,
  })  : _ra = ra,
        _nome = nome,
        _notaFinal = notaFinal {
    // validações simples no seu estilo
    if (_ra <= 0) {
      print("RA inválido! Definido como 1");
      _ra = 1;
    }

    if (_nome.isEmpty) {
      print("Nome inválido! Definido como 'Aluno'");
      _nome = "Aluno";
    }

    if (_notaFinal < 0 || _notaFinal > 10) {
      print("Nota inválida! Definida como 0");
      _notaFinal = 0;
    }
  }

  bool aprovado() {
    return _notaFinal >= 6;
  }

  void exibirBoletim() {
    print("======================");
    print("RA: $_ra");
    print("Nome: $_nome");
    print("Nota final: $_notaFinal");

    if (aprovado()) {
      print("Situação: Aprovado");
    } else {
      print("Situação: Reprovado");
    }

    print("======================");
  }
}