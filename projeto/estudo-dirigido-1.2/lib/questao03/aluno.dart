class Aluno {
  int _ra;
  String _nome;
  double _notaFinal;

  // Construtor com parâmetros nomeados obrigatórios
  Aluno({
    required int ra,
    required String nome,
    required double notaFinal,
  })  : _ra = ra,
        _nome = nome,
        _notaFinal = notaFinal {
    // Usa os setters para aplicar as validações
    this.ra = ra; //chama o setter de ra, setter de nome, ....
    this.nome = nome;
    this.notaFinal = notaFinal;
  }

  // Getters
  int get ra => _ra;
  String get nome => _nome;
  double get notaFinal => _notaFinal;

  // Setters com validações
  set ra(int valor) {
    if (valor <= 0) {
      print("RA inválido! Definido como 1");
      _ra = 1;
    } else {
      _ra = valor;
    }
  }

  set nome(String valor) {
    if (valor.isEmpty) {
      print("Nome inválido! Definido como 'Aluno'");
      _nome = "Aluno";
    } else {
      _nome = valor;
    }
  }

  set notaFinal(double valor) {
    if (valor < 0 || valor > 10) {
      print("Nota inválida! Definida como 0");
      _notaFinal = 0;
    } else {
      _notaFinal = valor;
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
      print("Situação: Aprovado(a)");
    } else {
      print("Situação: Reprovado(a)");
    }
    print("======================");
  }
}