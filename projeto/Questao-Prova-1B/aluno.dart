//Este programa deve atender os requisitos de:
// Criar uma classe aluno com:
// Nome, identificador único, se tem nota suficiente ou não para entrar no programa
// se faz parte do programa de bolsa de estudos
// se tem disponibilidade suficiente
class Aluno {
  String _nome;
  String _ra;
  double _nota1;
  double _nota2;
  bool _bolsa;
  bool _disponibilidade;

  Aluno({
    required String nome,
    required String ra,
    required double nota1,
    required double nota2,
    required bool bolsa,
    required bool disponibilidade,
  })  : _nome = nome, // Lista inicializadora de variaveis "Required"
        _ra = ra,
        _nota1 = nota1,
        _nota2 = nota2,
        _bolsa = bolsa,
        _disponibilidade = disponibilidade;

  // Getters
  String get nome => _nome;
  String get ra => _ra;
  double get nota1 => _nota1;
  double get nota2 => _nota2;

  // Setters

  set nome(String novoNome){
    _nome = novoNome;
  }

  set ra(String novoRA){
    _ra = novoRA;
  }

  set nota1(double nota){
    _nota1 = nota;
  }

  set nota2(double nota){
    _nota2 = nota;
  }

  // Calcula média
  double get media => (_nota1 + _nota2) / 2;

  // Verifica se tem nota suficiente
  bool get temNotaSuficiente => media >= 7.0;

  // Verifica se pode entrar no programa
  bool get podeEntrar =>
      temNotaSuficiente && _disponibilidade;

  // Info resumida
  void mostrarDados() {
    print("Nome: $_nome");
    print("RA: $_ra");
    print("Média: ${media.toStringAsFixed(2)}");
    print("Nota suficiente: $temNotaSuficiente");
    print("Bolsa: $_bolsa");
    print("Disponibilidade: $_disponibilidade");
    print("Pode entrar no programa: $podeEntrar");
  }
}